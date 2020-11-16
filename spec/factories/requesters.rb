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
FactoryBot.define do 
  factory :requester do
    company_name { FFaker::Company.name }
    cnpj { 34254279 }
    address { FFaker::Address.street_address }
    phone { FFaker::PhoneNumber.phone_number }
  end
end
