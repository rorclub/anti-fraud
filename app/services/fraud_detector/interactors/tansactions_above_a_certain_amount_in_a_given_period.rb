# frozen_string_literal: true
module FraudDetector
  module Interactors
    class TansactionsAboveACertainAmountInAGivenPeriod
      include Interactor

      delegate :params, to: :context

      def call
        detect_fraud!
      rescue StandardError => e
        context.fail!(message: e.message)
      end

      private

      MAX_TIME   = 3 # seconds
      MAX_AMOUNT = 3

      def detect_fraud!
        key = "amount_transactions:#{params[:transaction_id]}"

        if Rails.cache.exist?(key)
          amount, time = Rails.cache.read(key)

          raise "Too many transactions in a certain period of time" if
            (amount > MAX_AMOUNT) && (Time.now - time > MAX_TIME)

          Rails.cache.write(key, [amount.to_i + 1, time])
        else
          Rails.cache.write(key, [1, Time.now])
        end
      end
    end
  end
end
