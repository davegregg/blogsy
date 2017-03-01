class PostSerializer < ActiveModel::Serializer
  attributes :title, :body, :comments_count
  belongs_to :user
  has_many   :comments
end
