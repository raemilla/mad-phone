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
  {user_id: 1, title: "cows r cool"},
  {user_id: 2, title: "first story ever!!1!"},
  {user_id: 2, title: "the best story in the universe"},
  {user_id: 3, title: "dbc is the best"},
  {title: "adventure story", user_id: 1},
  {title: "lions and tigers and dragons oh my", user_id: 5},
  {title: "*phil voice*", user_id: 4}
]

Story.create!(stories)


sentences = [
  {user_id: 2, story_id: 1, text: "Once upon a time how now brown cow"},
  {user_id: 2, story_id: 2, text: "Once upon a time boop de doop"},
  {user_id: 3, story_id: 3, text: "Once upon a time unique newyork"},
  {user_id: 1, story_id: 4, text: "Once upon a time dbc is the dopeness"},
  {user_id: 6, story_id: 5, text: "Once upon a time a princess peaced out of her castle"},
  {user_id: 4, story_id: 6, text: "Once upon a time a dragons took over the universe"},
  {user_id: 1, story_id: 7, text: "Once upon a time *phil voice* salamanderz!"}
]

Sentence.create!(sentences)

story = Story.find_by(id: 1)
story.sentences.build(user_id: 3, text: "Meatloaf frankfurter tri-tip, tail fatback drumstick pig. Ham hock filet mignon doner swine, kielbasa alcatra flank cow capicola beef ribs beef brisket landjaeger corned beef. Jowl shank tail, sirloin doner tenderloin ball tip strip steak salami cow ribeye porchetta shankle capicola. Shankle landjaeger turducken chuck sausage, porchetta beef fatback short loin. Kielbasa cupim spare ribs, pork belly boudin shank picanha corned beef kevin. Ball tip doner pork chop jerky tongue short loin t-bone turkey ribeye pork belly. Chuck swine pork belly pork chop cow.")
story.sentences.build(user_id: 6, text: "Helvetica retro chia woke, vaporware direct trade paleo waistcoat 8-bit sriracha hot chicken brooklyn occupy bespoke. Mlkshk gastropub prism, heirloom DIY before they sold out everyday carry next level freegan small batch put a bird on it sriracha bicycle rights. Pinterest church-key mustache viral, tofu scenester helvetica chia ramps fap hoodie tattooed. Jean shorts everyday carry af umami subway tile wayfarers church-key, celiac post-ironic flexitarian. Vice cronut butcher deep v ethical polaroid. Before they sold out marfa occupy, quinoa 90's seitan lomo intelligentsia shabby chic woke affogato. Beard blog flannel distillery synth, meh pug meggings.")
story.save
