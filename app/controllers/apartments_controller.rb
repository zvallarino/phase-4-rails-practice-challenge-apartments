class ApartmentsController < ApplicationController

  def index
    apartments = Apartment.all 
    render json: apartments
  end

  def update

    apartment = find_apartment
    apartment.update(apartments_params)
    render json: apartment

  end 

  def create
    apartment = Apartment.create!(apartments_params)
    render json: apartment
  end 

  def destroy
      apartment = find_apartment
      apartment.destroy
      head :no_content
  end 
  

  private

  def apartments_params
    params.permit(:number)
  end 

  def find_apartment
    Apartment.find(params[:id])
  end
  
end
