Song.destroy_all
Artist.destroy_all

artist_1 = Artist.create!({name: "Britney Spears", image_url:"http://res.cloudinary.com/dknq5n8bi/image/upload/v1516388628/britney_spears-wide_nxhxnv.jpg"})
artist_2 = Artist.create!({name: "Justin Bieber", image_url:"http://res.cloudinary.com/dknq5n8bi/image/upload/v1516388719/justin-bieber-gq-0316-02_qwcfah.jpg"})
artist_3 = Artist.create!({name: "Spicegirls", image_url:"http://res.cloudinary.com/dknq5n8bi/image/upload/v1516388665/spicegirls_ha8y32.jpg"})

song1 = Song.create!({name: "Hit me baby one more time", artist: artist_1})
song11 = Song.create!({name: "Britney Bitch", artist: artist_1})

song2 = Song.create!({name: "Mama I love you", artist: artist_3})
song22 = Song.create!({name: "Runaway", artist: artist_3})

song3 = Song.create!({name: "Love Yourself", artist: artist_2})
song33 = Song.create!({name: "Sorry", artist: artist_2})
