class CreateLemos < ActiveRecord::Migration[5.2]
  def change
    create_table :lemos do |t|
      t.integer :price, null: false
      t.integer :store_id, null: false

      t.timestamps
    end

    add_index :lemos, :store_id
  end
end
