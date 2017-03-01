class CreateStorages < ActiveRecord::Migration[5.0]
  def change
    create_table :storages do |t|
      t.integer :max_capacity
      t.integer :cur_capacity

      t.timestamps
    end
  end
end
