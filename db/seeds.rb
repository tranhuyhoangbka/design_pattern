# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 10.times do
#   Monkey.create! name: Faker::Name.name, status: Monkey.statuses.keys.sample
# end
# Monkey.find_each do |m|
#   2.times do
#     m.bananas << Banana.create(name: Faker::Name.name, free_comment: Faker::Lorem.sentence)
#   end
# end

5.times{Author.create(name: Faker::Name.name)}
30.times do
 article = Article.new(title: Faker::Book.title, body: Faker::Lorem.sentence, author: Author.all.sample, published: [true, false, nil].sample)
 article.published_at = (7.days.ago.to_date...ServerTime.now.to_date).map{|d| d.to_time}.sample if article.published?
 article.save
end