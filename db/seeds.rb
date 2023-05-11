require 'faker'

5.times do
  Post.create(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraphs.join('\n\n')
  )
end
