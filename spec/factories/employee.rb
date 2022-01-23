FactoryBot.define do
  factory :employee do
    first_name { Faker::Code.first_name }
    last_name { Faker::Code.last_name }
    birthdate { Faker::Date.birthday(min_age: 18, max_age: 65) }
    admission_date { Faker::Date.between(from: 2.years.ago, to: Date.today) }
    salary { Faker::Number.decimal(l_digits: 2) }
    role { Role.all.sample }
  end
end
