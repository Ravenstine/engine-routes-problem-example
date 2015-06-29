class AddPermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.string :resource
      t.timestamps
    end

    create_table :user_permissions do |t|
      t.integer :user_id
      t.integer :permission_id
      t.timestamps
    end

    add_index :permissions, :resource
    add_index :user_permissions, :user_id
    add_index :user_permissions, :permission_id
  end
end
