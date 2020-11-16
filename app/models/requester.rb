# == Schema Information
#
# Table name: requesters
#
#  id           :bigint           not null, primary key
#  company_name :string
#  cnpj         :string
#  address      :string
#  phone        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Requester < ApplicationRecord
  has_one :loan, dependent: :destroy

  validates :company_name, :cnpj, :address, :phone, presence: true
end
