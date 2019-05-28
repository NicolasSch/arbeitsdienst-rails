class User < ApplicationRecord
  has_many :labor_service_user
  has_many :labor_services, though: :labor_service_user

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, format: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
