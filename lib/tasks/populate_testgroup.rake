namespace :db do
  desc 'Erase and fill testgroup table'
  task populate_testgroup: :environment do
    require 'populator'


     Testgroup.populate 25 do |testgroup|
      testgroup.title = Populator.words(1..5).titleize
      testgroup.description = Populator.words(1..15).titleize
      testgroup.testcase = 1..15
    end

    end
  end
