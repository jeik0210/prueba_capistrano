class UsersController < ApplicationController
	before_action :set_user, only:[:update, :delete]
  def index
  	@user = User.all
    
    unless params[:paternal].nil?
      @users = User.where('paternal like "%'+params[:paternal].to_s+'%" and maternal like "%'+params[:maternal].to_s+'%"').paginate(page: params[:page])
    else
      @users =User.all.paginate(page: params[:page], per_page: '10')
    end
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
    @user.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
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
