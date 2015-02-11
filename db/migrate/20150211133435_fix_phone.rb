class FixPhone < ActiveRecord::Migration
  def change
    rename_column :restaurants, :phone, :phone_number
  end
end
