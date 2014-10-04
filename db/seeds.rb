# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all

artist_names = ["Blondie", "Beyonce", "Tao and the Get-downs", "Jimi Hendrix", "The Killers"]

artist_names.each do |name|
  artist = Artist.create name: name

  3.times do |i|
    artist.tracks.create name: "track #{i}"
  end
end
