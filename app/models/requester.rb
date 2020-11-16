class Requester < ApplicationRecord
  has_one :loan, dependent: :destroy

  validates :company_name, :cnpj, :address, :phone, presence: true
end
