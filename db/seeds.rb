# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


categories = ['Art', 'Comics', 'Crafts', 'Dance', 'Design', 'Fashion', 'Film', 'Food', 'Games', 'Journalism', 'Music', 'Photography', 'Publishing', 'Technology', 'Theater']

# populate categories (MODEL SHOULD NOT ALLOW DUPLCATES) 
# NEED THIS TO POPULATE PROJECTS 
categories.each do |c|
  cat = Category.new(name: c)
  cat.save
end


#SEED Users if desired:
User.create(first: "Luke", 
last: "Skywalker", 
email: "luke@gmail.com", 
password: "password",
password_confirmation: "password",
image: "https://images.gr-assets.com/characters/1264613782p8/1783.jpg",
admin: true)
User.create(first: "John", 
last: "Wick", 
email: "john@gmail.com", 
password: "password",
password_confirmation: "password",
image: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d0/John_Wick_-_Chapter_4_promotional_poster.jpg/220px-John_Wick_-_Chapter_4_promotional_poster.jpg",
admin: false)
User.create(first: "Harley", 
last: "Quinn", 
email: "harley@gmail.com", 
password: "password",
password_confirmation: "password",
image: "https://i.guim.co.uk/img/media/70336afc112f7ec7d2e7fb67273f5bfb02791235/0_209_1202_721/master/1202.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=c7aac128b81f030d470b6118a57ea68e",
admin: false)
User.create(first: "Jim", 
last: "Kirk", 
email: "jim@gmail.com", 
password: "password",
password_confirmation: "password",
image: "https://imageio.forbes.com/blogs-images/alexknapp/files/2012/11/JamesTKirk.jpg?height=380&width=300&fit=bounds",
admin: false)
User.create(first: "Bruce", 
last: "Wayne", 
email: "bruce@gmail.com", 
password: "password",
password_confirmation: "password",
image: "https://upload.wikimedia.org/wikipedia/en/1/19/Bruce_Wayne_%28The_Dark_Knight_Trilogy%29.jpg",
admin: false)

users = User.all



### INSERT CUSTOM PROJECTS HERE

title = "Adopting a new Dog"
des = "Please help me adopt this dog. I'll give him all my love and never let anything happen to him."
img = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbBVFXKvpoEzhYMvCLO6vPIgF-xJLhSuflmt87HGkIy8N9oZ9wllsmAbfXqFDnQ9TsJhA&usqp=CAU"
str_date = Faker::Date.between(from: '2024-04-01', to: '2024-09-01')
end_date = str_date + rand(15..120)
goal_amount = 600

proj = Project.new(category_id: Category.first.id, title: title, description: des, goal_amount: goal_amount, start_date: str_date, end_date: end_date, user_id: User.find_by(email: 'john@gmail.com').id, image_url: img)
if not proj.save
  pp proj.errors
end

#---------------------------


project_superlatives = ['Crowd-Funded', 'Amazing', 'Half-Baked', 'Worldwide', 'Unoriginal', 'Innovative', 'Religious', 'Greatest']
project_types = ['Project', 'Mission', 'Foundation', 'Initiative', 'Kickstarter']
project_goals = ['Improvement', 'Development', 'Accessibility', 'Preservation', 'Destruction']

messages = ["This project wouldn't exist without our backers!", "Admit it, we cooked with this idea.", "We're revolutionizing the industry.", "Bigger and better rewards coming soon!!", "This is world-changing.", "We've almost reached our goal! Thank you to everyone who believed in our mission.", "This is my final project.", "Not a scam. Pinky promise!"]

images = ["https://img.freepik.com/free-photo/abstract-nature-painted-with-watercolor-autumn-leaves-backdrop-generated-by-ai_188544-9806.jpg", "https://www.epidemicsound.com/blog/content/images/size/w2000/2023/05/what-is-royalty-free-music-header.webp", "https://www.poynter.org/wp-content/uploads/2019/02/2.Journalism-Fundamentals-June-2022.png", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRT0XanS-zY2amtRDJ3gPw5jo2KbRhCVAh8xQ&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz09fAl5_eoIvPeL-TMX_UoUgkx9pJaqD0VA&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsLiY8nDX3q-95uvIK_QoD1ve0KO9OxHbEiA&s", "https://jetpackcomics.com/wp-content/uploads/2018/10/stacks-of-comic-books.png", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX4VNKCg0WkEnPaG3PzaNPgYhhl03XaqJeww&s", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAxrpbb-pzxj3EcG4e6_YgojhBohwf8imqew&s", "https://images.unsplash.com/photo-1582845512747-e42001c95638?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"]

## POPULATES THE RANDOM PROJECTS DATABASE IF UNCOMMENTED. rails db:seed
15.times do
  str_date = Faker::Date.between(from: '2024-04-01', to: '2024-09-01')
  end_date = str_date + rand(15..120)

  goal_amount = rand(600..40000)

  category = categories[rand(0...categories.length)]
  category_id = Category.find_by(name: category).id

  superlative = project_superlatives[rand(0...project_superlatives.length)]
  project = project_types[rand(0...project_types.length)]
  project_goal = project_goals[rand(0...project_goals.length)]

  title = "#{superlative} #{project} for the #{project_goal} of #{category}"
  description = "#{messages[rand(0...messages.length)]}"

  user_id = User.find_by(id: users[rand(0...users.length)]).id

  proj = Project.new(category_id: category_id, title: title, description: description, goal_amount: goal_amount, start_date: str_date, end_date: end_date, user_id: user_id, image_url: images[rand(0...images.length)])
  if not proj.save
    pp proj.errors
  end
end

# NEW REWARDS SEED
projects = Project.all
projects.each do |proj|
  multiplier = rand(1..5)
  
  i = 1
  while i < 4
    desc = "Tier #{i} Reward"

    amount = 20 * i * multiplier
    limit  = rand(10..50)
    if limit > 30
      limit = nil
    end
    delivery_date = proj.end_date + 10
    reward = Reward.new(project_id: proj.id, description: desc, amount: amount, limit: limit, delivery_date: proj.end_date + 10)
    reward.save

    i+=1
  end
end
#Adding Reward Titles
reward_titles = ["This Title One", "Reward Type 2", "Have This Reward", "Enjoy with Donation", "Enjoy This Bonus"]
Reward.all.each do |reward|
  ran_num = rand(0..reward_titles.length - 1)
  reward.title = reward_titles[ran_num]
  reward.save
end




### Generating Donations
messages = ["", "This is the coolest thing I've ever seen!", "Wow!", "I really hope this project gets the backing it deserves.", "Loving the rewards haha", "This looks pretty cool, excited to see where this goes", "This is the greatest kickstarter of all time.", "Shut up and take my money.", "I doubt this will get backed but it's literally so awesome, I'm gonna tell my friends about it :)"]

60.times do 
  user_id = User.ids.sample
  project_id = Project.ids.sample
  msg = messages[rand(0...messages.length)]
  proj = Project.find_by(id: project_id)
  amount = (proj.goal_amount * rand(1..10)) / 100

  don = Donation.new(user_id: user_id, project_id: project_id, message: msg, amount: amount)
  if don.valid?
    don.save
    proj.amount_raised += amount
    proj.save
  else
    pp don.errors
  end
end

