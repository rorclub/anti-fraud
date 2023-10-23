# frozen_string_literal: true
require "rails_helper"

RSpec.describe("Api::V1::TransactionsController", type: :request) do
  describe "POST #charge" do
    context "success" do
      let(:transaction_id) { "2342357" }
      let(:params) do
        {
          transaction_id: transaction_id,
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

        json = JSON.parse(response.body)

        expect(response).to(have_http_status(:ok))
        expect(json["transaction_id"]).to(eq(transaction_id))
        expect(json["recommendation"]).to(eq("approve"))
      end
    end

    context "detect frauds" do
      let(:transaction_id) { "2342357" }
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

      it "response too many transactions fraud detected" do
        3.times do
          post("/api/v1/charge", params: params)
        end

        expect(response).to(have_http_status(:ok))

        json = JSON.parse(response.body)

        expect(response).to(have_http_status(:ok))
        expect(json["transaction_id"]).to(eq(transaction_id))
        expect(json["recommendation"]).to(eq("deny"))
      end

      it "response transactions above a certain amount in a given period fraud detected" do
        6.times do
          post("/api/v1/charge", params: params)
          sleep(0.5)
        end

        expect(response).to(have_http_status(:ok))

        json = JSON.parse(response.body)

        expect(response).to(have_http_status(:ok))
        expect(json["transaction_id"]).to(eq(transaction_id))
        expect(json["recommendation"]).to(eq("deny"))
      end
    end
  end
end
