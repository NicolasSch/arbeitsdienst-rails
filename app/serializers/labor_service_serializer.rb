class LaborServiceSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :starts_at, :ends_at

  has_many :users
end
