class CreateTestcases < ActiveRecord::Migration[6.1]
  def change
    create_table :testcases do |t|
      t.string :title
      t.string :description
      t.string :authored
      t.string :email
      t.integer :version

      t.timestamps
    end
  end
end
