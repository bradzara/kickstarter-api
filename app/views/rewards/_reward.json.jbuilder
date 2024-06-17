# json.extract! reward, :id, :created_at, :updated_at
# json.url reward_url(reward, format: :json)


json.id            reward.id
json.project_id    reward.project_id
json.description   reward.description
json.amount        reward.amount
json.limit         reward.limit
json.delivery_date reward.delivery_date
json.created_at    reward.created_at
json.updated_at    reward.updated_at

