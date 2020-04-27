class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.belongs_to :playlist, null: false, foreign_key: true
      t.string :name
      t.string :spotify_url

      t.timestamps
    end
  end
end
