class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.references :user
      t.references :thing
      t.string :thing_type
      t.string :action

      t.timestamps
    end
    add_index :permissions, :user_id
    add_index :permissions, :thing_id
  end
end
