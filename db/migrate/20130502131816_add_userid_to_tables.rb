class AddUseridToTables < ActiveRecord::Migration
  def change
    add_column :business_items, :user_id, :integer
    add_column :jobs, :user_id, :integer
  end
end
