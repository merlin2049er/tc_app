# frozen_string_literal: true

namespace :db do
  desc 'Erase and fill testresult table'
  task populate_testresult: :environment do
    require 'populator'

      Testresult.populate 15 do |testresult|
        testresult.result = Populator.words(1..5).titleize
        testresult.pass = false
        testresult.comment = Populator.words(1..10).titleize
        testresult.testgroup =  1..15
        testresult.case =  1..15
      end
    end
  end
