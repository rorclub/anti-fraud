# frozen_string_literal: true

class Api::V1::TransactionsController < ApplicationController
  def charge
    render(json: { message: "hello" }, status: :ok)
  end
end
