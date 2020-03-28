class AddStatusToTrianing < ActiveRecord::Migration[5.2]
  def change
    add_column :trianings, :status, :string
  end
end
