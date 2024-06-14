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


## populate categories (MODEL SHOULD NOT ALLOW DUPLCATES) 
## NEED THIS TO POPULATE PROJECTS 
categories.each do |c|
  cat = Category.new(name: c)
  cat.save
end


project_types = ['Project', 'Mission', 'Foundation', 'Initiative', 'Kickstarter']
project_goals = ['Improvement', 'Development', 'Accessibility', 'Preservation', 'Destruction']


### POPULATES THE PROJECTS DATABASE IF UNCOMMENTED. rails db:seed
10.times do
  str_date = Faker::Date.between(from: '2023-01-01', to: '2026-12-31')
  end_date = str_date + rand(15..450)

  goal_amount = rand(600..5000000)

  category = categories[rand(0...categories.length)]
  category_id = Category.find_by(name: category).id

  project = project_types[rand(0...project_types.length)]
  project_goal = project_goals[rand(0...project_goals.length)]
  maker = Faker::Name.name


  title = "#{maker}'s #{project} for the #{project_goal} of #{category}"
  description = "#{maker} would like to thank everyone for their generous support!"

  proj = Project.new(category_id: category_id, title: title, description: description, goal_amount: goal_amount, start_date: str_date, end_date: end_date)
  proj.save

end