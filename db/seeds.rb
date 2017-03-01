5.times do
  generate_user = -> { User.new(username: FFaker::InternetSE.user_name_random,
                                email: FFaker::Internet.email,
                                bio: FFaker::CheesyLingo.sentence) }
  generate_comment = -> (user){ Comment.new(body: FFaker::Tweet.tweet,
                                            user: user) }
  user = generate_user.()
  rand(1..31).times do
    post = Post.new(title: FFaker::Movie.title,
                    body: FFaker::DizzleIpsum.paragraph)
    commenter = generate_user.()
    rand(4).times do
      post.comments << generate_comment.(commenter)
    end
    user.posts << post
    user.save!
  end
  rand(4).times do
    post = Post.all[rand(Post.all.count)]
    post.comments << generate_comment.(user)
    post.save!
  end
end
