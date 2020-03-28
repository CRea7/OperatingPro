class CreateTrianings < ActiveRecord::Migration[5.2]
  def change
    create_table :trianings do |t|
      t.string :email
      t.string :procedure

      t.timestamps
    end
  end
end
