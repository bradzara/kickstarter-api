json.array! @donations do |donation|

  json.id donation.id

  json.amount donation.amount
  json.message donation.message
  json.user donation.user
  json.project donation.project

  json.created_at donation.created_at
  json.updated_at donation.updated_at
end