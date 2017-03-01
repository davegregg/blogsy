5.times do
  generate_user = -> { User.new(username: FFaker::InternetSE.user_name_random,
                                email: FFaker::Internet.email,
                                bio: FFaker::CheesyLingo.sentence) }
  user = generate_user.()
  rand(1..31).times do
    post = Post.new(title: FFaker::Movie.title,
                    body: FFaker::DizzleIpsum.paragraph)
    commenter = generate_user.()
    rand(7).times do
      comment = Comment.new(body: FFaker::Tweet.tweet,
                            user: commenter)
      post.comments << comment
    end
    user.posts << post
    user.save!
  end
end
