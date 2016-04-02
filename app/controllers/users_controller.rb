class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:destroy, :activate]

  def index
    @users = User.paginate(page: params[:page]).order(:last_name)
  end

	def show
		@user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
	end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Thank you for signing up with PowerShare! Your account will be verified to ensure you are a registered voter in this community. You will be notified via email when your account is activated."
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Your profile has been updated."
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "This user's account has been deleted from the system."
    redirect_to users_url
  end

  def activate
    user = User.find(params[:id])
    user.update_attributes(:active => true)
    flash[:success] = "This user's account has been activated. Please email them to notify the change: "+user.first_name+" "+user.last_name+", "+user.email
    redirect_to users_url
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :middle_name, :last_name, :community_id, :address, :zip, :email, :password, :password_confirmation, :active)
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end
