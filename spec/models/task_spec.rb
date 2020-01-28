require 'spec_helper'

describe Task do
  it "has a valid factory"  do
    FactoryGirl.create(:task).should be_valid
  end
  it "is invalid without a title" do
    FactoryGirl.build(:task, title: nil).should_not be_valid
  end
  it "is invalid without a task" do
    FactoryGirl.build(:task, step: nil).should_not be_valid
  end
end