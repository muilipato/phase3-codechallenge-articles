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
puts article.author.name  # Output: John Doe
puts article.magazine.name  # Output: Fashion Weekly

puts author1.magazines.map { |magazine| magazine.name }  # Output: Fashion Weekly, Tech Review
puts magazine1.contributors.map { |author| author.name }  # Output: John Doe, Jane Smith

# Test associations and aggregate methods
magazine = Magazine.find_by_name("Coolest Music")
puts magazine.article_titles  # Output: Fashion Trends, Summer Fashion Essentials
puts magazine.contributing_authors.map { |author| author.name }  # Output: John Doe

puts author1.topic_areas  # Output: Fashion, Technology
