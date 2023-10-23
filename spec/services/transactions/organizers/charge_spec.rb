# frozen_string_literal: true
require "rails_helper"

RSpec.describe(Transactions::Organizers::Charge) do
  describe "#call" do
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

    let(:subject) do
      described_class.call(params: params)
    end

    context "success" do
      it "returns sucess? true" do
        Rails.cache.clear
        expect(subject.success?).to(be_truthy)
      end
    end

    context "failure" do
      it "deny too many transactions" do
        Rails.cache.clear

        result = nil

        3.times do
          result = described_class.call(params: params)
        end

        expect(result.success?).to(be_falsey)
        expect(result.message).to(eq("Too many transactions in a row"))
      end

      it "deny transactions above a certain amount in a given period" do
        Rails.cache.clear

        result = nil

        6.times do
          result = described_class.call(params: params)
          sleep(0.7)
        end

        expect(result.success?).to(be_falsey)
        expect(result.message).to(eq("Too many transactions in a certain period of time"))
      end

      it "deny user with charge back" do
        Rails.cache.clear

        params[:user_id] = "000-id-with-cbk"

        result = described_class.call(params: params)

        expect(result.success?).to(be_falsey)
        expect(result.message).to(eq("User with previous charge back"))
      end
    end
  end










  # describe "#call" do
  #   let(:valid_params) do
  #     attributes_for(:affiliate)
  #   end

  #   let(:subject) do
  #     described_class.call(params: valid_params)
  #   end

  #   context "success" do
  #     context "when the data is valid" do
  #       it "returns sucess? true" do
  #         expect(subject.success?).to(be_truthy)
  #       end

  #       it "generates referral code and url" do
  #         expect(subject.affiliate.referral_code).not_to(be_nil)
  #         expect(subject.affiliate.referral_url).not_to(be_nil)
  #         expect(subject.affiliate.referral_url).to(eq(ShortUrl.last.url))
  #         expect(subject.affiliate.id).to(eq(ShortUrl.last.affiliate_id))
  #       end
  #     end
  #   end

  #   context "failure" do
  #     let(:subject) { described_class.call(params: nil) }

  #     context "when the data is not valid" do
  #       it "returns sucess? false" do
  #         expect(subject.success?).to(be_falsey)
  #       end
  #     end
  #   end
  # end
end
