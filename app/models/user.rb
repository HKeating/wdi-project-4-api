class User < ApplicationRecord
  has_and_belongs_to_many :tasks
  has_and_belongs_to_many :projects
  has_many :projects
  has_secure_password
  validates :username, presence: true, uniqueness: true
end
