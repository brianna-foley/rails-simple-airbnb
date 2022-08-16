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

  def edit
    @apartment = Apartment.find(params[:id])
  end

  def update
    @apartment = Apartment.find(params[:id])
    @apartment.update(apartment_params)
    redirect_to apartment_path(@apartment)
  end

  def destroy
    @apartment = Apartment.find(params[:id])
    @apartment.destroy
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
