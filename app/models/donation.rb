class Donation < ApplicationRecord
  belongs_to :user
  belongs_to :project
  
  validates :amount, presence: true, numericality: {greater_than: 0, less_than: 10000000}
  validates :user_id,  presence: true
  validates :project_id, presence: true
end
