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

20.times do

Hospital.create(
	name: Faker::Company.name,
	location: Faker::Address.state
	)
end

20.times do
	Department.create(

		name: Faker::Commerce.department,
		hospital_id: Faker::Number.number(1),
		admin_id: Faker::Number.number(1)
		)
end

20.times do
Group.create(
	name: Faker::Name.name,
	department_id: Faker::Number.number(1)
	)
end

20.times do 
	Education.create(
	name: Faker::Name.name,
	duration: Faker::Number.digit,
	location: Faker::Address.state,
	description: Faker::Lorem.sentence(5, true),
		)
end




