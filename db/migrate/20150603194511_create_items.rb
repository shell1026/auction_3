class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :description
      t.integer :value
      t.integer :starting_bid
      t.integer :increment
      t.string :donor
      t.string :photo
      t.string :category

      t.timestamps

    end
  end
end
