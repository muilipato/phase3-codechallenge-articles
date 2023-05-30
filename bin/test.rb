
require_relative '../lib/articles'
require_relative '../lib/magazine'
require_relative '../lib/author'

# Create authors

author1 = Author.new("Patrick Maweu")
author2 = Author.new("Moringa School")

# Create magazines
magazine1 = Magazine.new("Coolest Music", "Music")
magazine2 = Magazine.new("AI disrupting our lives", "Tech")

# Create articles and associate them with authors and magazines
author1.add_article(magazine1, "Music Trends")
author1.add_article(magazine2, "The Future of AI")
author2.add_article(magazine1, "Spotify Playlist")

# Test object relationship methods
article = author1.articles.first
puts article.author.name
puts article.magazine.name

puts author1.magazines.map { |magazine| magazine.name }
puts magazine1.contributors.map { |author| author.name }

# Test associations and aggregate methods
magazine = Magazine.find_by_name("Coolest Music")
puts magazine.article_titles
puts magazine.contributing_authors.map { |author| author.name }

puts author1.topic_areas
