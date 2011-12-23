class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :asset_file_name
      t.integer :asset_file_size
      t.string :asset_content_type
      t.datetime :asset_updated_at
      t.references :ticket

      t.timestamps
    end

    remove_column :tickets, :asset_file_name
    remove_column :tickets, :asset_file_size
    remove_column :tickets, :asset_content_type
    remove_column :tickets, :asset_updated_at
  end
end
