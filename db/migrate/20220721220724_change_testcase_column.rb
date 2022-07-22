class ChangeTestcaseColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :testgroups, :testcase, :integer
    add_column :testgroups, :testcase_id, :integer
  end
end
