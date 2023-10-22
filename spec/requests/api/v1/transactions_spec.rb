# frozen_string_literal: true
require "rails_helper"

RSpec.describe("Api::V1::TransactionsController", type: :request) do
  describe "POST #charge" do
    context "success" do
      let(:params) do
        {
          transaction_id: 2342357,
          merchant_id: 29744,
          user_id: 97051,
          card_number: "434505******9116",
          transaction_date: "2019-11-31T23:16:32.812632",
          transaction_amount: 373,
          device_id: 285475,
        }
      end

      it "status of response is success" do
        post("/api/v1/charge", params: params)
        expect(response).to(have_http_status(:ok))
      end
    end
  end
end
