class TenantsController < ApplicationController

  def index
    tenants = Tenant.all 
    render json: tenants
  end 

  def create
    tenant = Tenant.create!(tenants_params)
    render json: tenant
  end 

  
  def update

    tenant = find_tenant
    tenant.update(tenants_params)
    render json: tenant

  end 

  def destroy
      tenant = find_tenant
      tenant.destroy
      head :no_content
  end 

  private

  def tenants_params
    params.permit(:name, :age)
  end 

  def find_tenant
    Tenant.find(params[:id])
  end
  
  

end
