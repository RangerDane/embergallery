class Addcolumnstoinvites < ActiveRecord::Migration
  def change
    add_column :invites, :giver_id, :integer
    add_column :invites, :receiver_id, :integer
    add_index :invites, :giver_id
  end
end
