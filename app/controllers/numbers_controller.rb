class NumbersController < ApplicationController
  def create
    @tele = Telephone.find(params[:telephone_id])
    @number = @tele.numbers.create(params[:number])
    redirect_to edit_admin_path(@tele)
  end
  
  def destroy
    @tele = Telephone.find(params[:telephone_id])
    @number = @tele.numbers.find(params[:id])
    @number.destroy
    redirect_to edit_admin_path(@tele)
  end
 
  private
    def numbers_params
      params.require(:number).permit(:tel, :text)
    end
end
