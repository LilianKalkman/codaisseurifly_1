Song.destroy_all
Artist.destroy

artist_1 = Artist.create!({name: "Britney Spears", image_url:"niks.jpg"})
artist_2 = Artist.create!({name: "Justin Bieber", image_url:"niks.jpeg"})
artist_3 = Artist.create!({name: "Spicegirls", image_url:"leeg.jpg"})

song1 = Song.create!({name: "Hit me baby one more time", artist: artist_1})
song11 = Song.create!({name: "Britney Bitch", artist: artist_1})

song2 = Song.create!({name: "Mama I love you", artist: artist_2})
song22 = Song.create!({name: "Runaway", artist: artist_2})

song3 = Song.create!({name: "Love Yourself", artist: artist_3})
song33 = Song.create!({name: "Sorry", artist: artist_3})
