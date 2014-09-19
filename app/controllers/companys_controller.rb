class CompanysController < ApplicationController
  def new
      @co = Company.new
    end

  def create
    @co = Company.new(company_params)
 
    @co.save
    redirect_to companys_path
  end
  
  def index
    @co = Company.all
  end 
  
  def destroy
    @co = Company.find(params[:id])
    @co.destroy
 
    redirect_to companys_path
  end
  
  private
  def company_params
    params.require(:company).permit(:name)
  end 
end
