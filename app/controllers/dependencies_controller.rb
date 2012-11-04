class DependenciesController < ApplicationController
  
  def create
    @dependency = Extension.find(1).dependencies.build(:dependent_id => params[:dependent_id])#Dependency.new(params[:dependency])
    if @dependency.save
      flash[:notice] = "Added Dependency"
      redirect_to root_url
    else
      flash[:notice] = "Unable to add Dependency"
      redirect_to root_url
    end
  end

  def destroy
    @dependency = Extension.find(1).dependencies.find(params[:id])
    @dependency.destroy
    flash[:notice] = "Removed dependency"
    redirect_to root_url
  end
end
