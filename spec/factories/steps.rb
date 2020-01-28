require 'faker'

FactoryGirl.define do
    factory :step do |f|
      f.title { Faker::Food.dish }
      f.board
    end
  end