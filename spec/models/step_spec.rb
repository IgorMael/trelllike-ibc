require 'spec_helper'

describe Step do
  it "has a valid factory"  do
    FactoryGirl.create(:step).should be_valid
  end
  it "is invalid without a title" do
    FactoryGirl.build(:step, title: nil).should_not be_valid
  end
  it "is invalid without a board" do
    FactoryGirl.build(:step, board: nil).should_not be_valid
  end
end