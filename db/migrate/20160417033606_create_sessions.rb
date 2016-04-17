class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :token
      t.integer :user_id
      t.string :ip_address
      t.timestamps null: false
    end
  end
end
