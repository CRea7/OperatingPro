class Changes < ActiveRecord::Migration[5.1]
  def change
    add_column :procedures, :department, :string
    add_column :procedures, :content, :string
  end
end
