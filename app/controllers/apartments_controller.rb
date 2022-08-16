class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def new
    @apartment = Apartment.new
  end

  def create
    @apartment = Apartment.new(apartment_params)
    @apartment.save
  end

  private

  def apartment_params
    params.require(:apartment).permit(
      :name,
      :address,
      :description,
      :price_per_night,
      :number_of_guests
    )
  end
end
