class UsersController < ApplicationController
  #require 'byebug'
  before_action :require_user_logged_in, only: [:index, :show]	

  def show
  #  binding.pry
    @purchaseds = current_user.products
  end

  def new	
    @user = User.new	
  end	

  def create	
    @user = User.new(user_params)	
	
    if @user.save	
      flash[:success] = 'ユーザを登録しました。'	
      redirect_to @user	
    else	
      flash.now[:danger] = 'ユーザの登録に失敗しました。'	
      render :new	
    end	
  end	
	
 # def products
  #binding.pry
   # @user = User.find_by(id: params[:id])
    #@purchaseds = @user.products
  #end  

#debugger
	
  private	
	
  def user_params	
    params.require(:user).permit(:name, :email, :password, :password_confirmation)	
  end	
end
