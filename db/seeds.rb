# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Generating seed date...'

puts '## Create User'
5.times do |i|
  user_domain = "user#{i}"
  User.create!(email: "#{user_domain}@example.com", password: "#{user_domain}pass", password_confirmation: "#{user_domain}pass")
end

puts '## Create Folder & Page'

3.times do |i|
  name = "folder#{i}"
  folder = User.first.folders.create!(name: name)
  folder.pages.create!
end

puts '## Create Card'

3.times do |i|
  content = "card#{i}"
  Page.first.cards.create!(content: content)
end

puts 'end'
