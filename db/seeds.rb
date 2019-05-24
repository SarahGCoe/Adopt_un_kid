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

puts 'Creating 5 Users...'
5.times do |i|
  user = User.create!(name: Faker::Science.scientist,

    email: Faker::Internet.email,
    password: Faker::GreekPhilosophers.quote)

  puts 'Creating 2 Kids...'
  2.times do |j|
    kid = Kid.new(name: Faker::Name.name,
      description: Faker::Movies::HitchhikersGuideToTheGalaxy.quote,
      price: rand(500),
      age_category: AGE.sample,
      personality: PERSONALITY.sample,
      address: "49 rue Saint James 33000 Bordeaux",
      user: user)
    urls = []
    urls << url1 = "https://images.pexels.com/photos/1105191/pexels-photo-1105191.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    urls << url2 = "https://images.unsplash.com/photo-1519457431-44ccd64a579b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80"
    urls << url3 = "https://images.pexels.com/photos/36483/aroni-arsa-children-little.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    urls << url4 = "https://images.pexels.com/photos/1912868/pexels-photo-1912868.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    urls << url5 = "https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"
    urls << url6 = "https://images.pexels.com/photos/789786/pexels-photo-789786.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
    kid.remote_photo_url = urls.sample
    kid.save
  end
end
puts "Done!"


