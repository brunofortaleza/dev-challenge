class Loan < ApplicationRecord
  belongs_to :requester

  validates :amount, :deadline, :interest_rate, presence: true
end
