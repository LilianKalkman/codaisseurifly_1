
ActiveRecord::Schema.define(version: 20180123161934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "song_id"
    t.index ["song_id"], name: "index_artists_on_song_id"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "artist_id"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_photos_on_artist_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "song_id"
    t.bigint "artist_id"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
    t.index ["song_id"], name: "index_songs_on_song_id"
  end

  add_foreign_key "artists", "songs"
  add_foreign_key "photos", "artists"
  add_foreign_key "songs", "artists"
  add_foreign_key "songs", "songs"
end
