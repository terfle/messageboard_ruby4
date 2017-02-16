require 'rails_helper'

RSpec.describe User, type: :model do
    before do
      @user = FactoryGirl.build(:user)
    end

  it "has a valid factory" do
   expect(@user.valid?).to eq(true)
   end 

end
