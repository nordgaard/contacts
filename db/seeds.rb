# User.create!([
#   {first_name: "Jens", last_name: "Nordgaard", phone: "8314236649", email: "goodbye@gmail.com"},
#   {first_name: "Bob", last_name: "Smith", phone: "1234567", email: "bob@bob.com"},
#   {first_name: "Dab", last_name: "Big", phone: "1236787", email: "dan@bob.com"}
# ])

10.times do 
  User.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone: Faker::Number.number(10)})
end
