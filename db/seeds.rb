# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

num = 0

print 'Generating 10 fake articles'

3.times do
  print '.'
  sleep 0.3
end

puts '' # Empty line

10.times do
  num += 1

  title = Faker::Books::Dune.title
  content = Faker::Books::Dune.quote

  article = Article.new(title: title, content: content)
  article.save

  puts ''
  puts "#{num} - Generated Article with title: \"#{title}\" and content: \"#{content}\""
  sleep 0.2
end
