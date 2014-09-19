class AlertsController < ApplicationController
  

  
  def new
      @alert = Alert.new
    end

  def create
    @alert = Alert.new(alert_params)
 
    @alert.save
    redirect_to alerts_path
  end
  
  def index
    @alert = Alert.all
  end 
  
  def destroy
    @alert = Alert.find(params[:id])
    @alert.destroy
 
    redirect_to admins_path
  end
  
  private
  def alert_params
    params.require(:alert).permit( :data, :dev, :worktype, :desc, :name, :system, :fio_diag)
  end 
  
end
