class ChangeItemidToUserid < ActiveRecord::Migration
  def change
    rename_column :orders, :item_id, :user_id
  end
end
