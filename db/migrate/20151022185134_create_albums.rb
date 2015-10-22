class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.string :format
      t.integer :band_id, null: false, index: true

      t.timestamps
    end
  end
end
