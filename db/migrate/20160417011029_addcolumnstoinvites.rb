class Addcolumnstoinvites < ActiveRecord::Migration
  def change
    add_column :invites, :giver_id, :integer
    add_column :invites, :receiver_id, :integer
    add_column :invites, :uses, :integer, default: 1
    add_index :invites, :giver_id
    add_index :invites, :code
    remove_column :invites, :receiver_id
    remove_column :invites, :email
  end
end
