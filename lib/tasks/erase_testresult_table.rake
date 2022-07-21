# frozen_string_literal: true

namespace :db do
  desc 'Erase testresults table'
  task erase_testresult_table: :environment do

    [ Testresult ].map(&:delete_all)
  end
end
