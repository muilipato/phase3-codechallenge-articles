
class Magazine

  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    Article.all.select { |article| article.magazine == self }.map { |article| article.author }
  end

  def self.find_by_name(name)
    @@all.find { |magazine| magazine.name == name }
  end

  def article_titles
    Article.all.select { |article| article.magazine == self }.map { |article| article.title }
  end

  def contributing_authors
    authors = Hash.new(0)
    Article.all.select { |article| article.magazine == self }.each do |article|
      authors[article.author] += 1
    end
    authors.select { |author, count| count > 2 }.keys
  end
end


