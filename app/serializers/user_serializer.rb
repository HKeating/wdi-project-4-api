class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image
  has_many :tasks
  has_many :projects
end
