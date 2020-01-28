require 'spec_helper'

describe Board do
  it "has a valid factory"  do
    FactoryGirl.create(:board).should be_valid
  end
  it "is invalid without a title" do
    FactoryGirl.build(:board, title: nil).should_not be_valid
  end
end