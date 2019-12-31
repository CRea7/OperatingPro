class CreateProcedures < ActiveRecord::Migration[5.1]
  def change
    create_table :procedures do |t|
      t.string :title
      t.string :revnum

      t.timestamps
    end
  end
end
