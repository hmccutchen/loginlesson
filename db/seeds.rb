require 'faker'


3.times do

  User.create(name:  Faker::Name.name,
              email: Faker::Internet.email
    )

end
