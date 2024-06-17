json.id @project.id
json.category_id @project.category_id

json.title @project.title
json.description @project.description

json.goal_amount @project.goal_amount
json.amount_raised @project.amount_raised

json.start_date @project.start_date
json.end_date @project.end_date

json.owner do
  json.id @project.user.id
  json.name @project.user.first + ' ' + @project.user.last
  json.email @project.user.email
  json.image @project.user.image
end

json.donations do

  json.array! @project.donation do |don|
    json.id don.id
    json.amount don.amount
    json.message don.message

    json.user do
      json.id don.user.id
      json.name don.user.first + ' ' + don.user.last
      json.email don.user.email
    end

    json.created_at don.created_at
    json.updated_at don.updated_at
  end
end
