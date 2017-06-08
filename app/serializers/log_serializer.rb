class LogSerializer < ActiveModel::Serializer
  attributes :id, :content, :created_at
  has_one :project
  has_one :user
end
