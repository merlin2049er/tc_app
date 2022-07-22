class AddCasetoTestgroup < ActiveRecord::Migration[6.1]
  def change
    add_column :testgroups, :case, :integer

  end
end
