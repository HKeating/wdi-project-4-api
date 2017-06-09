class LogSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at, :day, :project, :user, :details
  has_one :project
  has_one :user
end
