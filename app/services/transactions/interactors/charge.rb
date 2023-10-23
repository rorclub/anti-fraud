# frozen_string_literal: true
module Transactions
  module Interactors
    class Charge
      include Interactor

      delegate :params, to: :context

      def call
        context.recommendation = charge!
      rescue StandardError => e
        context.fail!(message: e.message)
      end

      private

      def charge!
        true
      end
    end
  end
end
