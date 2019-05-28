class LaborServiceUsersController < ApplicationController
  def toggle
    labor_service =  LaborService.find(params[:labor_service_id])
    labor_service_user.labor_service_users.first_or_initialize(user_id: parmas[:id])
    if labor_service_user.presisted?
      labor_service_user.destroy!
    else
      labor_service_user.save
    end
  end
end
