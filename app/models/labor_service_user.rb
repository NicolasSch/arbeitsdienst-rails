class LaborServiceUser < ApplicationRecord
  belongs_to :user
  belongs_to :labor_service
end
