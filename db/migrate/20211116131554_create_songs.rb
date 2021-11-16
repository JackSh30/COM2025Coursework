class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.belongs_to :album, index: true, foreign_key: true, null: false
      t.string :title, null: false
      t.float :length, null: false, numericality: {greater_than_or_equal_to: 0}

      t.timestamps
    end
  end
end
