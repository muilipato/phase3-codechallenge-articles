# Object Relations Code Challenge - Articles

## Author

Patrick Maweu

## Project Setup

The github link is public

For this project to work run `ruby bin\test.rb` in this directory. This is where the test code is.

## Instructions


For this assignment, you will be working with a Magazine domain.

We have three models: `Author`, `Article`, and `Magazine`.

For our purposes, an `Author` has many `Article`s, a `Magazine` has many `Article`s, and `Article`s belong to both `Author` and `Magazine`.

`Author` - `Magazine` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### Author

- `Author#initialize(name)`
  - An author is initialized with a name, as a string.
  - A name **cannot** be changed after it is initialized.
- `Author#name`
  - Returns the name of the author

#### Magazine

- `Magazine#initialize(name, category)`
  - A magazine is initialized with a name as a string and a category as a string
  - The name and category of the magazine **can be** changed after being initialized.
- `Magazine#name`
  - Returns the name of this magazine
- `Magazine#category`
  - Returns the category of this magazine
- `Magazine.all`
  - Returns an array of all Magazine instances

#### Article

- `Article#initialize(author, magazine, title)`
  - An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
  - An article **cannot** change its author, magazine, or title after it is has been initialized.
- `Article#title`
  - Returns the title for that given article
- `Article.all`
  - Returns an array of all Article instances

### Object Relationship Methods

#### Article

- `Article#author`
  - Returns the author for that given article
- `Article#magazine`
  - Returns the magazine for that given article

#### Author

- `Author#articles`
  - Returns an array of Article instances the author has written
- `Author#magazines`
  - Returns a **unique** array of Magazine instances for which the author has contributed to

#### Magazine

- `Magazine#contributors`
  - Returns an array of Author instances who have written for this magazine

### Associations and Aggregate Methods

#### Author

- `Author#add_article(magazine, title)`
  - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
- `Author#topic_areas`
  - Returns a **unique** array of strings with the categories of the magazines the author has contributed to

#### Magazine

- `Magazine.find_by_name(name)`
  - Given a string of magazine's name, this method returns the first magazine object that matches
- `Magazine#article_titles`
  - Returns an array strings of the titles of all articles written for that magazine
- `Magazine#contributing_authors`
  - Returns an array of authors who have written more than 2 articles for the magazine

## Rubric

You can find the rubric for this assessment [here](https://github.com/learn-co-curriculum/se-rubrics/blob/master/module-1.md).
# phase3CodeChallengeArticles
