json.array! @projects do |project|
  json.id project.id
  json.category_id project.category_id

  json.title project.title
  json.description project.description

  json.goal_amount project.goal_amount
  json.amount_raised project.amount_raised

  json.start_date project.start_date
  json.end_date project.end_date

  json.owner do
    json.id project.user.id
    json.name project.user.first + ' ' + project.user.last
    json.email project.user.email
    json.image project.user.image
  end

  json.image_url project.image_url
  
end
