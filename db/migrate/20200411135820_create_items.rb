class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_type
      t.string :name
      t.string :value
      t.integer :qty
      t.integer :price
      t.integer :category_id
      t.integer :manufacturer_id
      t.timestamps
    end
  end
end
