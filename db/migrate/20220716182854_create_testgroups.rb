class CreateTestgroups < ActiveRecord::Migration[6.1]
  def change
    create_table :testgroups do |t|
      t.string :title
      t.string :description
      t.integer :testcase

      t.timestamps
    end
  end
end
