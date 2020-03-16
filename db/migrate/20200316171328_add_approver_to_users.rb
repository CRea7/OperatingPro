class AddApproverToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :approver, :string
  end
end
