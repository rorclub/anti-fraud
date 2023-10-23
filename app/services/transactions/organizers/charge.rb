# frozen_string_literal: true
module Transactions
  module Organizers
    class Charge
      include Interactor::Organizer

      organize(
        FraudDetector::Organizers::CheckAllFrauds,
        Interactors::Charge,
      )
    end
  end
end
