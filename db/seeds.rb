# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'




url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=#{ENV['NewsAPIKey']}"


req = open(url)
response_body = req.read
resp = JSON.parse(response_body)
resp["articles"].each do |f|
  ListItem.create(title: f["title"], url: f["url"], website:f["source"]["name"])
end
