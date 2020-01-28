require 'faker'

FactoryGirl.define do
    factory :board do |f|
      f.title { Faker::Company.name }
    end
  end