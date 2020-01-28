require 'faker'

FactoryGirl.define do
    factory :task do |f|
      f.title { Faker::Food.ingredients }
      f.step
    end
  end