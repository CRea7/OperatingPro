class AddUserToProcedures < ActiveRecord::Migration[5.2]
  def change
    add_column :procedures, :creator, :string
  end
end
