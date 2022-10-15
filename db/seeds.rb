# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

puts "iniciando seed"

url = 'https://api.spaceflightnewsapi.net/v3/articles/'
articles = JSON.parse(URI.open(url).read)

articles.each do |article|
  Article.create!(featured: article['featured'],
                  title: article['title'],
                  url: article['url'],
                  imageUrl: article['imageUrl'],
                  newsSite: article['newsSite'],
                  summary: article['summary'],
                  publishedAt: article['publishedAt'],
                  launches: article['launches'],
                  events: article['events'])
end

puts "seed realizado com sucesso"
