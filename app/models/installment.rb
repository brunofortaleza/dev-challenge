# == Schema Information
#
# Table name: installments
#
#  id         :bigint           not null, primary key
#  amount     :decimal(, )
#  deadline   :date
#  loan_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Installment < ApplicationRecord
  belongs_to :loan
end
