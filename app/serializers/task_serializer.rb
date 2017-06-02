class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :start_day, :due_day
  has_one :user
  has_one :project
end
