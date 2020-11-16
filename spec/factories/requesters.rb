FactoryBot.define do 
  factory :requester do
    company_name { FFaker::Company.name }
    cnpj { 34254279 }
    address { FFaker::Address.street_address }
    phone { FFaker::PhoneNumber.phone_number }
  end
end
