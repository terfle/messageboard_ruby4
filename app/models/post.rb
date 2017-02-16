class Post < ActiveRecord::Base
  validates :body, presence: true
  validates :title, presence: true
  validates :user, presence: true
  belongs_to :user
end
