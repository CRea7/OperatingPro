class AddStatusToProcedures < ActiveRecord::Migration[5.1]
  def change
    add_column :procedures, :status, :string
  end
end
