# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'faker'

5.times do |b|
  counselor = Counselor.create!(name: Faker::Name.name, bio: Faker::Company.name, contact: Faker::Address.zip_code)

end