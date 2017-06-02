class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_date, :duration, :image
  has_one :user
  has_many :users
end
