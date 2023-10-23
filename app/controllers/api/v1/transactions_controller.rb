# frozen_string_literal: true

class Api::V1::TransactionsController < ApplicationController
  def charge
    result = Transactions::Organizers::Charge.call(params: params)

    recommendation = :approve
    recommendation = :deny if result.failure?

    render(json: { transaction_id: params[:transaction_id], recommendation: recommendation }, status: :ok)
  end
end
