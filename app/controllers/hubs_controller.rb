class HubsController < ApplicationController
  before_action :set_hub, only: [:show, :update, :destroy]

  def index
    @hubs = Hub.all
    json_response(@hubs)
  end

  def create
    @hub = Hub.create!(hub_params)
    json_response(@hub, :created)
  end

  def show
    json_response(@hub)
  end

  def update
    @hub.update(hub_params)
    head :no_content
  end

  def destroy
    @hub.destroy
    head :no_content
  end


  private

  def hub_params
    params.permit(:hubname, :website, :state, :address)
  end

  def set_hub
    @hub = Hub.find(params[:id])
  end

end
