# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

beatles = Artist.where(name: 'The Beatles').first
beatles.delete if beatles

artists = Artist.create([name: 'The Beatles',
                          description: 'The greatest band of all time',
                          active: false])

stones = Artist.where(name: 'The Rolling Stones').first
stones.delete if stones

artists = Artist.create([name: 'The Rolling Stones',
                          description: 'The greatest blues rock band of all time',
                          active: true])

stevie = Artist.where(name: 'Stevie Wonder').first
stevie.delete if stevie

artists = Artist.create([name: 'Stevie Wonder',
                          description: 'The blind maestro',
                          active: true])

aretha = Artist.where(name: 'Aretha Franklin').first
aretha.delete if aretha

artists = Artist.create([name: 'Aretha Franklin',
                          description: 'The greatest singer of all time',
                          active: false])

dylan = Artist.where(name: 'Bob Dylan').first
dylan.delete if dylan

artists = Artist.create([name: 'Bob Dylan',
                          description: 'The voice of a generation',
                          active: true])

whiteAlbum = Album.where(title: 'The Beatles').first
whiteAlbum.delete if whiteAlbum

albums = Album.create([title: 'The Beatles',
                        artist_id: 1,
                        description: 'The greatest album of all time',
                        release: "1968-11-22",
                        numOfSongs: 30,
                        length: 93.33])

exile = Album.where(title: 'Exile on Main St.').first
exile.delete if exile

albums = Album.create([title: 'Exile on Main St.',
                        artist_id: 2,
                        description: 'Largely recorded in the South of France',
                        release: "1972-5-12",
                        numOfSongs: 18,
                        length: 67.07])

innervisions = Album.where(title: 'Innervisions').first
innervisions.delete if innervisions

albums = Album.create([title: 'Innervisions',
                        artist_id: 3,
                        description: 'The pinnacle of psychedelic soul',
                        release: "1973-8-3",
                        numOfSongs: 9,
                        length: 44.15])

lovedAMan = Album.where(title: 'I Never Loved a Man the Way I Love You').first
lovedAMan.delete if lovedAMan

albums = Album.create([title: 'I Never Loved a Man the Way I Love You',
                        artist_id: 4,
                        description: 'Includes her hit cover of Otis Redding\'s Respect',
                        release: "1967-3-10",
                        numOfSongs: 11,
                        length: 32.51])

blonde = Album.where(title: 'Blonde on Blonde').first
blonde.delete if blonde

albums = Album.create([title: 'Blonde on Blonde',
                        artist_id: 5,
                        description: 'The third album in Dylan\'s electric trilogy',
                        release: "1966-6-20",
                        numOfSongs: 14,
                        length: 72.57])

gentlyWeep = Song.where(title: 'While My Guitar Gently Weeps').first
gentlyWeep.delete if gentlyWeep

songs = Song.create([title: 'While My Guitar Gently Weeps',
                      album_id: 1,
                      length: 4.46])

happy = Song.where(title: 'Happy').first
happy.delete if happy

songs = Song.create([title: 'Happy',
                      album_id: 2,
                      length: 3.04])

city = Song.where(title: 'Living for the City').first
city.delete if city

songs = Song.create([title: 'Living for the City',
                      album_id: 3,
                      length: 7.03])

respect = Song.where(title: 'Respect').first
respect.delete if respect

songs = Song.create([title: 'Respect',
                      album_id: 4,
                      length: 2.27])

johanna = Song.where(title: 'Visions of Johanna').first
johanna.delete if johanna

songs = Song.create([title: 'Visions of Johanna',
                      album_id: 5,
                      length: 7.33])
