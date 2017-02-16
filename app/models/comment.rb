class Comment < ActiveRecord::Base
	
	validates :body, presence: true
	validates :user, presence: true
	belongs_to :user
	belongs_to :post
end
