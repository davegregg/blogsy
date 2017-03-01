5.times do
  generate_user = -> { User.new(username: FFaker::InternetSE.user_name_random,
                                email: FFaker::Internet.email,
                                bio: FFaker::CheesyLingo.sentence) }
  rand(1..31).times do
    post = Post.new(title: FFaker::Movie.title,
                    body: FFaker::DizzleIpsum.paragraph)
    rand(7).times do
      commenter = generate_user.()
      comment = Comment.new(body: FFaker::Tweet.tweet,
                            user: commenter)
      post.comments << comment
    end
    user = generate_user.()
    user.posts << post
    user.save!
  end
end
