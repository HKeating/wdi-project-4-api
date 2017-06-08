class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_date, :end_date, :duration, :image
  has_one :user
  has_many :users
  has_many :tasks
  has_many :milestones
  has_many :logs
end
