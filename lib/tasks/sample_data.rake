namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Spencer Olson",
                 email: "spence1818@gmail.com",
                 password: "password",
                 password_confirmation: "password")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end