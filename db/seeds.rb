require 'faker'

5.times do
Admin.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,  
    password: 'password',
    password_confirmation: 'password',
    hospital_id: Faker::Number.digit
    )

end

20.times do
User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    supervisor_name: Faker::Name.last_name,
    hire_date: Faker::Business.credit_card_expiry_date,
    certified_date: Faker::Business.credit_card_expiry_date,
    employed_date: Faker::Business.credit_card_expiry_date,
    shift: Faker::Lorem.word,
    group_id: Faker::Number.number(1),
    education_id: Faker::Number.number(2) 
    )

end