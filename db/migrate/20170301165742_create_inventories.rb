class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.integer :no_item
      t.references :item, foreign_key: true
      t.references :storage, foreign_key: true

      t.timestamps
    end
  end
end
