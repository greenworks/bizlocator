class DeleteZipFromAddresses < ActiveRecord::Migration
  def up
    remove_column :addresses, :zip
  end

  def down
  end
end
