# frozen_string_literal: true

namespace :db do
  desc 'Erase testgroup table'
  task erase_testgroup_table: :environment do



    [  Testgroup ].map(&:delete_all)
  end
end
