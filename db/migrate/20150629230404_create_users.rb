class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :password_digest
      t.datetime :last_login
      t.boolean :can_login
      t.boolean :is_superuser
      t.boolean :email_changed

      t.timestamps null: false
    end
  end
end
