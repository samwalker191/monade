class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      # t.datatype :name_of_column, #optional things (null: false, default: 'hello')
      t.string :username, null: false

      t.timestamps
    end

    # add_index :name_of_table, :name_of_column, optional things
    add_index :users, :username, unique: true
  end
end
