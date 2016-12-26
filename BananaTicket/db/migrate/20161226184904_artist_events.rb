class ArtistEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :artists_events do |t|
      t.references :artist
      t.references :event, index: true

      t.timestamps
    end
  end
end
