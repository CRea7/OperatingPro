 5.times do
   Procedure.create(
        title: Faker::Book.title,
        revnum: Faker::Lorem.sentence,
        status: Faker::Lorem.sentence
   )
 end
