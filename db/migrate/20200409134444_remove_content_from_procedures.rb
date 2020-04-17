class RemoveContentFromProcedures < ActiveRecord::Migration[5.2]
  def change
    remove_column :procedures, :content, :string
  end
end
