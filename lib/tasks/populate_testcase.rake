# frozen_string_literal: true

namespace :db do
  desc 'fill testcase table'
  task populate_testcase: :environment do
    require 'populator'

   Testcase.populate 15 do |tc|
    tc.title = Populator.words(1..5).titleize
    tc.description = Populator.words(1..15).titleize
    tc.authored = Populator.words(1..2).titleize
    tc.email = Faker::Internet.email
    tc.version = 1..15
  end
  
  end
end
