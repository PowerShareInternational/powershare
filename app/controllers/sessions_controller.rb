class SessionsController < ApplicationController
  def new
    @user = User.new
    if logged_in? 
      redirect_to :controller => 'static_pages', :action => 'home' 
    end 
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
      if user.active == false
        flash[:danger] = "Your account has not been verified. Please try again soon."
        redirect_to root_url
  		else
        log_in user
        params[:session][:remember_me] == '1' ? remember(user) : forget(user)
  		  redirect_to :controller => 'static_pages', :action => 'home'
      end
  	else
  		flash[:danger] = 'Invalid email/password combination'
  		redirect_to root_url
  	end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
