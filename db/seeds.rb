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

artists = Artist.create([name: 'example',
                          description: 'The blind maestro',
                          ])
=begin
whiteAlbum = Album.where(title: 'The Beatles').first
whiteAlbum.delete if whiteAlbum

albums = Album.create([title: 'The Beatles',
                        artist: 'The Beatles',
                        description: 'The greatest album of all time',
                        release: 1968-11-22,
                        numOfSongs: 30,
                        length: 93.00])
=end
