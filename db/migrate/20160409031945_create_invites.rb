class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :code
      t.string :email
      t.timestamps null: false
    end
  end
end
