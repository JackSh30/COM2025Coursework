class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.belongs_to :artist, index: true, foreign_key: true
      t.string :title, null: false
      t.text :description
      t.date :release, null: false
      t.integer :numOfSongs, null: false
      t.float :length, null: false

      t.timestamps
    end
  end
end
