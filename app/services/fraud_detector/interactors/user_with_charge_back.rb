# frozen_string_literal: true
module FraudDetector
  module Interactors
    class UserWithChargeBack
      include Interactor

      delegate :params, to: :context

      def call
        detect_fraud!
      rescue StandardError => e
        context.fail!(message: e.message)
      end

      private

      def detect_fraud!
        raise "User with previous charge back" if has_charge_back?
      end

      def has_charge_back?
        #
        # here we need to implement the real check if a user have a previous charge back
        # below we have a fake implementation
        #
        return true if params[:user_id] == "000-id-with-cbk"
      end
    end
  end
end
