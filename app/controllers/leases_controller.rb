class LeasesController < ApplicationController
  def index
    leases = Lease.all 
    render json: leases
  end 

  def create
    lease = Lease.create!(leases_params)
    render json: lease
  end 

  def destroy
    lease = find_lease
    lease.destroy
    head :no_content
  end 

private

  def leases_params
  params.permit(:rent, :tenant_id, :apartment_id)
  end 

  def find_lease
  Lease.find(params[:id])
  end

end
