# frozen_string_literal: true
module Transactions
  module Organizers
    class FraudDetector
      include Interactor::Organizer

      organize(
        Interactors::FraudDetector,
        Interactors::Charge,
      )
    end
  end
end
