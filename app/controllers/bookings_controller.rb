class BookingsController < ApplicationController
  before_action :set_hub
  before_action :set_space
  before_action :set_booking, only: [:show, :update, :destroy]

  def index
    json_response(@space.bookings)
  end

  def show
    json_response(@booking)
  end

  def create
    @space.bookings.create!(booking_params)
    json_response(@space, :created)
  end

  def destroy
    @booking.destroy
    head :no_content
  end

  private

  def booking_params
    params.permit(:title, :purpose, :status, :membercount, :start, :end)
  end

  def set_hub
    @hub = Hub.find(params[:hub_id])
  end

  def set_space
    @space = @hub.spaces.find_by!(id: params[:space_id]) if @hub
  end

  def set_booking
    @booking = @space.bookings.find_by!(id: params[:id]) if @space
  end
end
