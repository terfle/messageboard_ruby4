require 'rails_helper'

RSpec.describe Comment do
	before do
		@user = FactoryGirl.build(:user)
		@post = Post.create(user: @user, title: "this is the title", body: "this is the body")
		@comment = Comment.create(user: @user, body: "Text", post: @post)
		#let(:comment) {Comment.new}
	end

	it "comment is not valid without a body" do
		@comment.body = nil;
		expect(@comment).not_to be_valid
	end

	it "comment is not valid without a user" do
		@comment.user_id = nil;
		expect(@comment).not_to be_valid
	end

	it "comment is valid with body" do
		expect(@comment).to be_valid
	end

end