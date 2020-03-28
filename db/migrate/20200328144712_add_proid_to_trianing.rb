class AddProidToTrianing < ActiveRecord::Migration[5.2]
  def change
    add_column :trianings, :proid, :string
  end
end
