require 'faker'
# Create Teachers
 5.times do
   teacher = Teacher.new(
     email: Faker::Internet.email,
     password: Faker::Lorem.characters(10),
     name:  Faker::Name.name,
     theme:   Faker::Lorem.sentence,
     bio:    Faker::Lorem.paragraph,
     schedule:  Faker::Lorem.paragraph,
   )
   teacher.skip_confirmation!
   teacher.save!
  end

 teachers = Teacher.all

 
 puts "Seed finished"
 puts "#{Teacher.count} teachers created"