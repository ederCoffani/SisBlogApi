class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :lat, :lng
  has_many :comments
end
