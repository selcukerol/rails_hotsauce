class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :cost

      t.timestamps
    end
  end
end
