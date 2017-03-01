class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :posts_count
  has_many   :posts
  has_many   :comments
end
