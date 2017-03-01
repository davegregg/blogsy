class PostSerializer < ActiveModel::Serializer
  attributes :title, :body
  belongs_to :user
  has_many   :comments
end
