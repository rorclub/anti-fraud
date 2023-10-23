# frozen_string_literal: true
module FraudDetector
  module Organizers
    class CheckAllFrauds
      include Interactor::Organizer

      organize(
        Interactors::TooManyTransactionsInARow,
        Interactors::TansactionsAboveACertainAmountInAGivenPeriod,
      )
    end
  end
end
