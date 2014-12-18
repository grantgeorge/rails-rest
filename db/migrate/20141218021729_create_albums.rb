class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title

      # this line adds an integer column called `artist_id`.
      t.references :artist, index: true

      t.timestamps
    end
  end
end
