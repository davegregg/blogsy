class CommentSerializer < ActiveModel::Serializer
  attributes :body
  belongs_to :user
end
