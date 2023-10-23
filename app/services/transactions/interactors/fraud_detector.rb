# frozen_string_literal: true
module Transactions
  module Interactors
    class FraudDetector
      include Interactor

      delegate :params, to: :context

      def call
        context.recommendation = detect_fraud!
      rescue StandardError => e
        context.fail!(message: e.message)
      end

      private

      def detect_fraud!
        true
      end
    end
  end
end
