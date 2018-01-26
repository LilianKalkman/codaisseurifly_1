class RemoveSongIdFromArtists < ActiveRecord::Migration[5.1]
  def change
    remove_column :artists, :song_id, :bigint
  end
end
