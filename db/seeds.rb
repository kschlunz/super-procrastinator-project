# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'github-trending'

repos = Github::Trending.get
repos.each do |r|
  puts "#{r.name} (#{r.star_count} stargazers)"
 puts "--- #{r.description}\n\n"
  # ListItem.create(url: r.name, name:r.description, website:"GitHub")

end
