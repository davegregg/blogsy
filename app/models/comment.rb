class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :post, counter_cache: true

  validates :body, presence: true
end
