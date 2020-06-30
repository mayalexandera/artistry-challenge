Artist.create(name: "Michael Jackson", age: rand(50), title: "King of Pop")
Artist.create(name: "Stevie Wonder", age: rand(50), title: "Little Stevie Wonder")
Artist.create(name: "Elvis Presley", age: rand(50), title: "the King")
Artist.create(name: "Whitney Houston", age: rand(50), title: "The Voice")
Artist.create(name: "Beyoncé", age: rand(50), title: "Destiny's Child")

Instrument.create!(name: "Guitar", classification: "Strings")
Instrument.create!(name: "Violin", classification: "Strings")
Instrument.create!(name: "Flute", classification: "Woodwind")
Instrument.create!(name: "Xylophone", classification: "Percussion")

ArtistInstrument.create!(artist: Artist.first, instrument: Instrument.first)
ArtistInstrument.create!(artist: Artist.second, instrument: Instrument.find_by(id: 3))
ArtistInstrument.create!(artist: Artist.third, instrument: Instrument.first)
ArtistInstrument.create!(artist: Artist.find_by(id: 4), instrument: Instrument.last)
ArtistInstrument.create!(artist: Artist.find_by(id: 4), instrument: Instrument.third)
ArtistInstrument.create!(artist: Artist.first, instrument: Instrument.second)
ArtistInstrument.create!(artist: Artist.second, instrument: Instrument.second)


