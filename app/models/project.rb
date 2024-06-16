class Project < ApplicationRecord
  has_many :donation
  has_many :rewards
  belongs_to :user
end
