class MilestoneSerializer < ActiveModel::Serializer
  attributes :id, :title, :day, :completed
  has_many :tasks
  has_one :project
end
