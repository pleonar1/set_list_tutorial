# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@prince = Artist.create!(name: 'Prince')
@rtj = Artist.create!(name: 'Run The Jewels')
@caamp = Artist.create!(name: 'Caamp')
@jgb = Artist.create!(name: 'Jerry Garcia Band')
@billie = Artist.create!(name: 'Billie Eilish')
@lcd = Artist.create!(name: 'LCD Soundsystem')

@purple_rain = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
@beret = @prince.songs.create!(title: 'Raspberry Beret', length: 665, play_count: 99)

@legend = @rtj.songs.create!(title: 'Legend Has It', length: 2301, play_count: 2300000)
@talk = @rtj.songs.create!(title: 'Talk to Me', length: 2301, play_count: 2300000)

@caamp.songs.create!(title: '26', length: 940, play_count: 150000)
@caamp.songs.create!(title: 'Vagabond', length: 240, play_count: 120000)

@bury_a_friend = @billie.songs.create!(title: 'bury a friend', length: 340, play_count: 1200000)
@bad_guy = @billie.songs.create!(title: 'bad guy', length: 240, play_count: 100000)

@someone_great = @lcd.songs.create!(title: 'Someone Great', length: 500, play_count: 1000000)
@change = @lcd.songs.create!(title: 'I Can Change', length: 640, play_count: 100000)

@summer_rewind = Playlist.create!(name: 'summer rewind')
@workout = Playlist.create!(name: 'workout')
@chill_evening = Playlist.create!(name: 'chill evening')

PlaylistSong.create!(playlist: @summer_rewind, song: @beret)
PlaylistSong.create!(playlist: @summer_rewind, song: @bad_guy)

PlaylistSong.create!(playlist: @chill_evening, song: @purple_rain)
PlaylistSong.create!(playlist: @chill_evening, song: @change)
PlaylistSong.create!(playlist: @chill_evening, song: @talk)
