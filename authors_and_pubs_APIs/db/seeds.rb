require 'faker'

20.times do |_i|
    Author.create(name: Faker::Internet.unique.user_name, email: Faker::Internet.unique.email, date_of_birth: Faker::Date.birthday(min_age = 18, max_age = 65) )
end

Author.all.each do |a|
    r = rand(1..10)
    r.times do
        a.publications.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs, publicated_at: DateTime.now)
    end   
end