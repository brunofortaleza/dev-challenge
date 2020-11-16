# == Schema Information
#
# Table name: loans
#
#  id                  :bigint           not null, primary key
#  amount              :decimal(, )
#  number_installments :integer
#  interest_rate       :decimal(, )
#  requester_id        :bigint           not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Loan < ApplicationRecord
  belongs_to :requester

  validates :amount, :deadline, :interest_rate, presence: true
end
