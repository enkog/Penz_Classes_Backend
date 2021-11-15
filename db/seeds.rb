# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all

5.times do |count|
  Course.create(title: Faker::Educator.subject, description: Faker::Lorem.characters, instructor_name: Faker::Name.unique.name, image: Faker::LoremFlickr.image)
end

3.times do
  User.create!(
    username: Faker::Name.unique.name
  )
end
  
puts "Seed finished"
puts "#{Course.count} courses created"
puts "#{User.count} users created"