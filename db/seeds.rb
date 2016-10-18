# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {name: "Harry Potter", provider: "fb", uid: "lalala", token: "lalala", description: "I'm the boy who lived"},
  {name: "Judy Garland", provider: "fb", uid: "lalala", token: "lalala"},
  {name: "Lorelai Gilmore", provider: "fb", uid: "lalala", token: "lalala", description: "I love coffee and I'm hilarious"},
  {name: "Rachel Greene", provider: "fb", uid: "lalala", token: "lalala", description: "We were NOT on a break"},
  {name: "Michael Scott", provider: "fb", uid: "lalala", token: "lalala", description: "thats what she said"},
  {name: "Deadpool", provider: "fb", uid: "lalala", token: "lalala", description: "chimichongas"},
  {name: "Oliver Queen", provider: "fb", uid: "lalala", token: "lalala", description: "I have failed this city"}
]

User.create!(users)

stories = [
  {user_id: 1, title: "cows r cool"},
  {user_id: 2, title: "first story ever!!1!"},
  {user_id: 2, title: "the best story in the universe"},
  {user_id: 3, title: "dbc is the best"},
  {title: "adventure story", user_id: 1},
  {title: "lions and tigers and dragons oh my", user_id: 5},
  {title: "*phil voice*", user_id: 4},
]

Story.create!(stories)


sentences = [
  {user_id: 1, story_id: 1, text: "Once upon a time how now brown cow"},
  {user_id: 2, story_id: 2, text: "Once upon a time boop de doop"},
  {user_id: 2, story_id: 3, text: "Once upon a time unique newyork"},
  {user_id: 3, story_id: 4, text: "Once upon a time dbc is the dopeness"},
  {user_id: 1, story_id: 5, text: "Once upon a time a princess peaced out of her castle"},
  {user_id: 5, story_id: 6, text: "Once upon a time a dragons took over the universe"},
  {user_id: 4, story_id: 7, text: "Once upon a time *phil voice* salamanderz!"}
]

Sentence.create!(sentences)

story = Story.find_by(id: 1)
story.sentences.build(user_id: 3, text: "Meatloaf frankfurter tri-tip, tail fatback drumstick pig. Ham hock filet mignon doner swine, kielbasa alcatra flank cow capicola beef ribs beef brisket landjaeger corned beef. Jowl shank tail, sirloin doner tenderloin ball tip strip steak salami cow ribeye porchetta shankle capicola. Shankle landjaeger turducken chuck sausage, porchetta beef fatback short loin. Kielbasa cupim spare ribs, pork belly boudin shank picanha corned beef kevin. Ball tip doner pork chop jerky tongue short loin t-bone turkey ribeye pork belly. Chuck swine pork belly pork chop cow.")
story.sentences.build(user_id: 6, text: "Helvetica retro chia woke, vaporware direct trade paleo waistcoat 8-bit sriracha hot chicken brooklyn occupy bespoke. Mlkshk gastropub prism, heirloom DIY before they sold out everyday carry next level freegan small batch put a bird on it sriracha bicycle rights. Pinterest church-key mustache viral, tofu scenester helvetica chia ramps fap hoodie tattooed. Jean shorts everyday carry af umami subway tile wayfarers church-key, celiac post-ironic flexitarian. Vice cronut butcher deep v ethical polaroid. Before they sold out marfa occupy, quinoa 90's seitan lomo intelligentsia shabby chic woke affogato.")
story.sentences.build(user_id: 4, text: "Beard blog flannel distillery synth, meh pug meggings.")
story.votes.build(user_id: 1, value: 1)
story.votes.build(user_id: 2, value: 1)
story.votes.build(user_id: 3, value: 1)
story.votes.build(user_id: 4, value: 1)
story.votes.build(user_id: 5, value: 1)
story.save

story2 = Story.find_by(id: 2)
story2.sentences.build(user_id: 3, text: "Helvetica retro chia woke, vaporware direct trade paleo waistcoat 8-bit sriracha hot chicken brooklyn occupy bespoke.")
story2.sentences.build(user_id: 4, text: "Jean shorts everyday carry af umami subway tile wayfarers church-key, celiac post-ironic flexitarian.")
story2.sentences.build(user_id: 5, text: "Kielbasa cupim spare ribs, pork belly boudin shank picanha corned beef kevin.")
story2.sentences.build(user_id: 6, text: "Ham hock filet mignon doner swine, kielbasa alcatra flank cow capicola beef ribs beef brisket landjaeger corned beef.")
story2.votes.build(user_id: 1, value: -1)
story2.votes.build(user_id: 2, value: -1)
story2.votes.build(user_id: 3, value: -1)
story2.update_attribute("finished", true)
story2.save

story3 = Story.find_by(id: 3)
story3.votes.build(user_id: 1, value: 1)
story3.votes.build(user_id: 2, value: 1)
story3.votes.build(user_id: 3, value: 1)
story3.votes.build(user_id: 4, value: 1)
story3.votes.build(user_id: 5, value: 1)
story3.votes.build(user_id: 6, value: 1)
story3.save

story4 = Story.find_by(id: 4)
story4.votes.build(user_id: 1, value: -1)
story4.votes.build(user_id: 2, value: -1)
story4.votes.build(user_id: 3, value: -1)
story4.votes.build(user_id: 4, value: -1)
story4.votes.build(user_id: 5, value: -1)
story4.save

story5 = Story.find_by(id: 5)
story5.votes.build(user_id: 1, value: 1)
story5.votes.build(user_id: 2, value: 1)
story5.votes.build(user_id: 3, value: 1)
story5.save

comments = [
  {story_id: 1, user_id: 2, text: "hilarious!!"},
  {story_id: 1, user_id: 3, text: "pls start more stories this is so good"},
  {story_id: 2, user_id: 1, text: "ur a troll"},
  {story_id: 2, user_id: 5, text: "this is dumb. downvote."},
  {story_id: 5, user_id: 3, text: "roflcopter!!"},
  {story_id: 3, user_id: 7, text: "ppl add to this story"},
  {story_id: 4, user_id: 2, text: "gibberish"},
  {story_id: 6, user_id: 4, text: "this is a comment! yay!"}
]

Comment.create!(comments)


Story.first.contributors.each do |contributor|
  Notification.create!(user_id: contributor.id, story_id: 1, text: "cows r cool has been completed! go check it out!")
end
