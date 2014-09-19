class TelephonesController < ApplicationController

  
  def index
    
    @tele = Telephone.all
    expires_now 
  end 
  
  def show
    @tele = Telephone.find(params[:id])
  end
  
 
  
  private
  def telephone_params
    params.require(:telephone).permit(:data,:fname,:sname, :name, :company, :service, :dolj, :rtel, :ltel, :mtel, :otdel)
  end 
  
  def expires_now
    response.cache_control.replace(:no_cache => true)
  end
end
