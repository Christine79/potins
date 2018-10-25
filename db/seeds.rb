# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke',  movie: movies.first)



require 'faker'

puts "lancement seeds Faker"

10.times do
  user = User.create!(first_name: "#{Faker::Name.first_name}", last_name: "#{Faker::Name.middle_name}" ,description: "#{Faker::Ancient.hero}", mail: "#{Faker::Internet.email}" , age: "#{Faker::Number.between(20, 40)}")
end
puts "Users ok"


10.times do
  ville = City.create!(name: "#{Faker::Pokemon.name}",  zip_code: "#{Faker::Address.zip_code}")
end
puts "Villes ok"

10.times do
  gossip = Gossip.create!(title: "#{Faker::Company.name}", content: "#{Faker::NewGirl.quote}", date: "#{Faker::Date.backward(14)}")

end
puts "Gossips ok"

10.times do
  tag = Tag.create!(title: "#{Faker::VentureBros.organization}")

end
puts "Tags ok"

10.times do
  privatemsg = PrivateMessage.create!(content: "#{Faker::NewGirl.quote}", date: "#{Faker::Date.backward(14)}")

end
puts "Private Msgs ok"
