class Project < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :users
  has_many :tasks
  has_many :milestones
end
