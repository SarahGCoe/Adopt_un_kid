# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
AGE = ["baby", "toddler", "child", "preteen", "teen"]
PERSONALITY = ["grumpy", "happy", "sleepy", "dopey", "bashful", "shy", "sneezy"]

puts 'Creating 10 Users...'
10.times do |i|
user = User.create!(name: Faker::Science.scientist,

                    email: Faker::Internet.email,
                    password: Faker::GreekPhilosophers.quote)
puts 'Creating 5 Kids...'
  5.times do |j|
    kid = Kid.create!(name: "#{Faker::Name.name} #{Faker::Superhero.power}",
                      description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
                      price: rand(500),
                      age_category: AGE.sample,
                      personality: PERSONALITY.sample,
                      user: user)
  end
end
puts "Done!"


