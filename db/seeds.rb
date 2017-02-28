# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  user = User.new(username: FFaker::InternetSE.user_name_random,
                  email: FFaker::Internet.email)
  rand(1..31).times do
    post = Post.new(title: FFaker::Movie.title,
                           body: FFaker::DizzleIpsum.paragraph)
    rand(7).times do
      post.comments << Comment.new(body: FFaker::Tweet.tweet)
    end
    user.posts << post
  end
  user.save!
end
