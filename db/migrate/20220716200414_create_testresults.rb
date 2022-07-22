class CreateTestresults < ActiveRecord::Migration[6.1]
  def change
    create_table :testresults do |t|
      t.string :result
      t.boolean :pass
      t.string :comment
      t.integer :testgroup
      t.integer :case

      t.timestamps
    end
  end
end
