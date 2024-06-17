json.id @user.id

json.first @user.first
json.last @user.last
json.email @user.email
json.image @user.image

json.admin @user.admin

json.projects @user.project

json.donations do
  json.array! @user.donation do |don|
    json.id don.id
    json.amount don.amount
    json.message don.message

    json.project do
      json.id don.project.id
      json.title don.project.title
      json.description don.project.description
      json.goal_amount don.project.goal_amount
      json.amount_raised don.project.amount_raised
      json.end_date don.project.end_date
    end

    json.created_at don.created_at
    json.updated_at don.updated_at
  end
end

json.created_at @user.created_at
json.updated_at @user.updated_at
