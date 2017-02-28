class Post < ApplicationRecord
  belongs_to :user, counter_cache: true
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true
end
