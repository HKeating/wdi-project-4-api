class LogSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :day
  has_one :project
  has_one :user
end
