# frozen_string_literal: true
module FraudDetector
  module Interactors
    class TooManyTransactionsInARow
      include Interactor

      delegate :params, to: :context

      def call
        detect_fraud!
      rescue StandardError => e
        context.fail!(message: e.message)
      end

      private

      def detect_fraud!
        key = "too_many_transactions:#{params[:transaction_id]}"

        if Rails.cache.exist?(key)
          raise "Too many transactions in a row"
        else
          Rails.cache.write(key, true, expires_in: 0.5.seconds)
        end
      end
    end
  end
end
