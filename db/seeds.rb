# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      ticker = 2
      if ticker % 2 == 0
        state_national = "State park"
      else
        state_national = "National park"
      end
      ticker += 1
      parks = Park.create!(
        park_name: Faker::Name.last_name,
        state: Faker::Address.state,
        city: Faker::Address.city,
        park_type: state_national,
        description: Faker::Lorem.words(number: 20)
      )
    end
    puts "Parks created."
  end
end

Seed.begin