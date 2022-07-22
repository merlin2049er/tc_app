class ChangeTestresultColumn < ActiveRecord::Migration[6.1]
  def change

    remove_column :testresults, :testgroup, :integer
    add_column :testresults, :testgroup_id, :integer
  end
end
