# frozen_string_literal: true

class Api::V1::TransactionsController < ApplicationController
  def charge
    result = Transactions::Organizers::FraudDetector.call(params: params)

    recommendation = "approve"
    recommendation = "deny" if result.failure?

    render(json: { transaction_id: 2342357, recommendation: recommendation }, status: :ok)
  end
end
