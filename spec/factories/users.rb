FactoryBot.define do
  factory :user do
    email     { Faker::Internet.unique.email }
    password  { Faker::Internet.password }

    trait :confirmed do
      confirmed_at { Time.now }
    end

    trait :locked do
      locked_at { Time.now }
    end

    trait :auth_unavailable do
      auth_available { false }
    end
  end
end
