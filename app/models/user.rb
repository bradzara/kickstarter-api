class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :first, presence: true
  validates :last, presence: true

  #HAS Many Associations
  has_many :donation
end
