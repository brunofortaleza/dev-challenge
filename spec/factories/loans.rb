FactoryBot.define do
  factory :loan do
    amount { "9.99" }
    number_installments { 1 }
    interest_rate { "9.99" }
    requester { nil }
  end
end
