class UsersController < ApplicationController
	before_action :set_user, only:[:update]
  def index
  	@user = User.all
  end

  def new

  	@user = User.new(user_params)
  	@user.save
  	respond_to do |format|
  		format.html{redirect_to root_path}
  	end
  end

  def update
  	@user.update(user_params)
    @user.save
  	respond_to do |format|
      format.html { redirect_to root_path } 
    end
  end

  def delete
  end
  def show
  	
  end
  private
  def set_user
  	@user = User.find(params[:user_id])
  end

  def user_params
  	params.require(:user).permit(:name,:paternal,:maternal,:date_nac,:sexo)
  end
end
