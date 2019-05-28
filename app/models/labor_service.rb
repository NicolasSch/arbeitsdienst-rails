class LaborService < ApplicationRecord
  has_many :labor_service_user,
  has_many :users, through: :labor_service_user

  validtes :description, :title, :starts_at, :ends_at, presence: true
end
