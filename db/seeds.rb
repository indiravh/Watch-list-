# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'
require 'json'
require 'open-uri'

puts "Cleaning up database..."
Bookmark.destroy_all #first destroy child = bookmark
Movie.destroy_all
puts "Database cleaned"


# # If I want to Parse the API's images, use text below 👇 and replace poster_url:
  base_url = 'http://tmdb.lewagon.com/movie/top_rated'
  movie_serialized = URI.open(base_url).read
  movie = JSON.parse(movie_serialized)

Movie.create(
  title: movie['results'][0]['title'],
  overview: movie['results'][0]['overview'],
  poster_url: "https://image.tmdb.org/t/p/w500/#{movie['results'][0]['poster_path']}",
  rating: movie['results'][0]['vote_average']
)
Movie.create(
  title: movie['results'][1]['title'],
  overview: movie['results'][1]['overview'],
  poster_url: "https://image.tmdb.org/t/p/w500/#{movie['results'][1]['poster_path']}",
  rating: movie['results'][1]['vote_average']
)
Movie.create(
  title: movie['results'][2]['title'],
  overview: movie['results'][2]['overview'],
  poster_url: "https://image.tmdb.org/t/p/w500/#{movie['results'][2]['poster_path']}",
  rating: movie['results'][2]['vote_average']
)
Movie.create(
  title: movie['results'][3]['title'],
  overview: movie['results'][3]['overview'],
  poster_url: "https://image.tmdb.org/t/p/w500/#{movie['results'][3]['poster_path']}",
  rating: movie['results'][4]['vote_average']
)
Movie.create(
  title: movie['results'][0]['title'],
  overview: movie['results'][0]['overview'],
  poster_url: "https://image.tmdb.org/t/p/w500/#{movie['results'][0]['poster_path']}",
  rating: movie['results'][0]['vote_average']
)

file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
list = List.new(name: 'TEST')
list.photo.attach(io: file, filename: 'test.png', content_type: 'image/png')
