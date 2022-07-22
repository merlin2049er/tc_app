class AddStepstoTestgroup < ActiveRecord::Migration[6.1]
  def change

    add_column :testgroups, :steps, :text

  end
end
