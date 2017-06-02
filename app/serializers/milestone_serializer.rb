class MilestoneSerializer < ActiveModel::Serializer
  attributes :id, :title, :day
  has_one :tasks
  has_one :project
end
