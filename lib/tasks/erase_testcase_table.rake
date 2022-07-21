# frozen_string_literal: true

namespace :db do
  desc 'Erase testcase table'
  task erase_testcase_table: :environment do

    [ Testcase].map(&:delete_all)
  end
end
