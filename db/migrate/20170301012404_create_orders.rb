class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :amount_of_item
      t.decimal :cost
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
