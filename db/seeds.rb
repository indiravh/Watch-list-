# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'json'
require 'open-uri'

# # If I want to Parse the API's images, use text below 👇 and replace poster_url:
  # base_url = 'http://tmdb.lewagon.com/movie/top_rated'
  # user_serialized = URI.open(base_url).read
  # user = JSON.parse(user_serialized)

Movie.create(title: Faker::Movie.title, overview: Faker::Quote.famous_last_words, poster_url: "https://image.tmdb.org/t/p/w500//loRmRzQXZeqG78TqZuyvSlEQfZb.jpg" , rating: rand(11))
Movie.create(title: Faker::Movie.title, overview: Faker::Quote.famous_last_words, poster_url: "https://image.tmdb.org/t/p/w500//5ZjMNJJabwBEnGVQoR2yoMEL9um.jpg" , rating: rand(11))
Movie.create(title: Faker::Movie.title, overview: Faker::Quote.famous_last_words, poster_url: "https://image.tmdb.org/t/p/w500//poec6RqOKY9iSiIUmfyfPfiLtvB.jpg" , rating: rand(11))
Movie.create(title: Faker::Movie.title, overview: Faker::Quote.famous_last_words, poster_url: "https://image.tmdb.org/t/p/w500//hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg" , rating: rand(11))
