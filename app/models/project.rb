class Project < ApplicationRecord
  has_many :donations
  has_many :rewards
  belongs_to :user
end
