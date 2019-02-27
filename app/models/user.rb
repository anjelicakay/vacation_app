class User < ApplicationRecord
  has_secure_password

  has_many :lists
  has_many :items, through: :lists

  validates :email, presence: true, uniqueness: true
  
end
