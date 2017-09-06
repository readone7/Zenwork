class SpacesController < ApplicationController
  before_action :set_hub
  before_action :set_space, only: [:show, :update, :destroy]

  def index
    json_response(@hub.spaces)
  end

  def show
    json_response(@space)
  end

  def create
    @hub.spaces.create!(space_params)
    json_response(@hub, :created)
  end

  def update
    @space.update(space_params)
    head :no_content
  end

  def destroy
    @space.destroy
    head :no_content
  end


  private

  def space_params
    params.permit(:spacename, :description, :opentime, :closetime, :capacity, :price, :availabile, :restricted)
  end

  def set_hub
    @hub = Hub.find(params[:hub_id])
  end

  def set_space
    @space = @hub.spaces.find_by!(id: params[:id]) if @hub
  end
end
