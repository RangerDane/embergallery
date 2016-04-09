class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :subdomain
      t.integer :user_id
      t.timestamps null: false
    end
    add_index :galleries, :subdomain
  end
end
