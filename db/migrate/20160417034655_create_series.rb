class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.timestamps null: false
    end
    add_foreign_key :series, :user_id
  end
end
