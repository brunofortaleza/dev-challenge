FactoryBot.define do 
  factory :loan do
    amount { rand(10000.0..100000.0) }
    deadline { rand(1..12) }
    interest_rate { rand(0.1..3.0) }
    requester { create(:requester)}

    trait :negative_amount do 
      amount { rand(-10000..-100000)}
    end
  end
end
