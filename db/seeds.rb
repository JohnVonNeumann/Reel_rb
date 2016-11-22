# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  "Example User",
             email: "example@reelapp.org",
             password:              "foobaruser123",
             password_confirmation: "foobaruser123",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@reelapp.org"
  password = "password123"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end

Listing.create(title:       'Bargain Fishing in Barramundi Capital of the World!',
               description: 'Come fish with PFC, the number one fishing trip
                             provider in Queensland! With our dedicated staff
                             and professional guides we will ensure you have the
                             perfect trip!',
               image_url:    'weipafishing1.jpeg',
               price:        500.00,
               location:     'Weipa, Queensland, Australia')

Listing.create(title:       'Local Fisherman with Gar Experience and Free Time',
              description:  'Been fishing the local waters for over 3 decades now
                             and know the inlets and rivers like the back of my hand,
                             charge reasonable rates for a great fishing experience.
                             All food and drink provided.',
              image_url:    'garfishing1.jpeg',
              price:         100.00,
              location:      'Tooradin, Victoria, Australia')

Listing.create(title:       'Professional Sports Fisherman providing Coaching.',
               description: 'My name is Rick Harris, and this is my fishing school.
                             I have been a gold medal winning fisherman on pro
                             circuits for over 15 years now, my track record speaks
                             for itself, looking for students of all skill levels.
                             Serious inquiries only thank you.',
               image_url:    'professionalfishing.jpeg',
               price:        300.00,
               location:     'Australia Wide')
