# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {name: "Harry Potter", provider: "fb", uid: "lalala", token: "lalala"},
  {name: "Judy Garland", provider: "fb", uid: "lalala", token: "lalala"},
  {name: "Lorelai Gilmore", provider: "fb", uid: "lalala", token: "lalala"},
  {name: "Rachel Greene", provider: "fb", uid: "lalala", token: "lalala"},
  {name: "Michael Scott", provider: "fb", uid: "lalala", token: "lalala"},
  {name: "Deadpool", provider: "fb", uid: "lalala", token: "lalala"},
  {name: "Oliver Queen", provider: "fb", uid: "lalala", token: "lalala"}
]

User.create!(users)

stories = [
  {user_id: 1},
  {user_id: 2},
  {user_id: 2},
  {user_id: 3},
  {user_id: 1},
  {user_id: 5},
  {user_id: 4}
]

Story.create!(stories)

sentences = [
  {user_id: 2, story_id: 1, text: "how now brown cow"},
  {user_id: 2, story_id: 2, text: "boop de doop"},
  {user_id: 3, story_id: 3, text: "unique newyork"},
  {user_id: 1, story_id: 4, text: "dbc is the dopeness"},
  {user_id: 6, story_id: 5, text: "a princess peaced out of her castle"},
  {user_id: 4, story_id: 6, text: "dragons took over the universe"},
  {user_id: 1, story_id: 7, text: "*phil voice* salamanderz!"}
]

Sentence.create!(sentences)
