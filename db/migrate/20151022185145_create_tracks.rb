class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :album_id, null: false, index: true
      t.string :name, null: false
      t.string :kind, null: false
      t.text :lyrics

    end
  end
end
