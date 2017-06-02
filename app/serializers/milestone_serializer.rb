class MilestoneSerializer < ActiveModel::Serializer
  attributes :id, :title, :day
  has_many :tasks
  has_one :project
end
