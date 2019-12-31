 5.times do
   Procedure.create(
        title: Faker::Book.title,
        revnum: Faker::Lorem.sentence
   )
 end
