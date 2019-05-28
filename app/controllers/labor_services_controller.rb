class LaborServicesController < ApplicationController
  def create
    labor_service = LaborService.new(labor_service_params)
    if labor_service.save
      render json: labor_service, , adapter: :json
    else
      head :bad_request
    end
  end

  def update
    labor_service = LaborService.find(params[:id])
    if labor_service.update(labor_service_params)
      render json: labor_service, serialzer: LaborServiceSerialzier
    else
      head :bad_request
    end
  end

  def index
    labor_services = LaborService.all
    render json: labor_services, each_serialzer: LaborServiceSerialzier
  end

  def delete
    labor_service = LaborService.find(params[:id])
    if labor_service.destroy
      head :ok
    else
      head :bad_request
    end
  end
end
