class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :start_day, :due_day
  has_many :users
  has_one :project
end
