FactoryBot.define do
  factory :role do
    comment { Faker::Alphanumeric.alphanumeric(number: 22) }
    name { Faker::Company.profession }
    description { Faker::Lorem.paragraph }
    activities { Faker::Lorem.paragraph }
  end
end
