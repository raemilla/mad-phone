# README

MadPhone is a collaborative story-writing web application. Users come together to write a story one sentence at a time until the creator decides the story is complete. The catch? Users may only see the most recently written sentence -- the rest of the story is locked until it is marked as complete. This combination of MadLibs and Telephone facilitates wacky tales for everyone's enjoyment.

# About
MadPhone was built using a Ruby on Rails backend with a React/JS frontend and styled with Bootstrap. MadPhone used the omniauth gem along with the Facebook API to allow users to sign in with Facebook and give them the ability to share stories they like on their Facebook page. 

# Contribute
Users can contribute to existing stories in two ways. They can pick a story directly from the browse section of MadPhone, or they can contribute to many stories at once by utilizing the contribute function, which continuously prompts users with new sentences after submission. 

<img src="http://i.imgur.com/vRzYqBV.png"/><img src="http://i.imgur.com/MD4Qr7K.png"/>

Users cannot submit more than one sentence for a story at a time. This means that they cannot write a paragraph in the sentence submission, nor can they continuously submit sentences for the same story one at a time.

# Create
Users also have the option of creating their own stories. MadPhone provides prompts in case users have writer's block. Creating a story allows the user to view <i>all</i> the sentences submitted to their story. Story creators have the option to mark a story as complete when they are satisfied with their story!

<img src="http://i.imgur.com/BliX0yl.png"/>

# Profile
Upon registration, a profile page with the user's Facebook profile picture is created for them. On their individual profile page, users can see the stories they have contributed to, created, and marked as complete. Users also recieve notifications about story activity on their profile.

<img src="http://i.imgur.com/ZJI0GsN.png"/>

Join in on the fun at https://mad-phone.herokuapp.com/
