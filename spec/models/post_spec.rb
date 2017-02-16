require 'rails_helper'

RSpec.describe Post do
	before do
		@user = FactoryGirl.build(:user)
		@post = Post.create(user: @user, title: "this is the title", body: "this is the body")
	
	end

	it "post is not valid without a body" do
		@post.body = nil
		expect(@post).not_to be_valid
	end

	it "post is not valid without a title" do
		@post.title = nil
		expect(@post).not_to be_valid
	end

	it "is valid with body" do
		expect(@post).to be_valid
	end

	it "is valid with title" do
		expect(@post).to be_valid
	end

	it "post is not valid without a user" do
		@post.user = nil
		expect(@post).not_to be_valid
	end

end