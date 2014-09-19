
class AdminController < ApplicationController
  
  http_basic_authenticate_with :name => "octa", :password => "111"
  
  def new
      @tele = Telephone.new
    end

  def create
    @tele = Telephone.new(telephone_params)
 
    @tele.save
    redirect_to admins_path
  end

  def index
    @tele = Telephone.all
  end 
  
  def edit
    @tele = Telephone.find(params[:id])
    
  end
  
  def destroy
    @tele = Telephone.find(params[:id])
    @tele.destroy
 
    redirect_to admins_path
  end
  
  def show
    @tele = Telephone.find(params[:id])
  end
  
  def update
  @tele = Telephone.find(params[:id])
 
  if @tele.update_attributes(params[:telephone])
    redirect_to :action => :edit, :id => @tele.id
  else
    render 'edit'
  end
end
end
