class MicropostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def index
	end

	def create
		@micropost = current_user.microposts.build(micropost_params)
		@micropost.community_id = current_user.community_id
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
	end

	def destroy
	end

	private

	def micropost_params
		params.require(:micropost).permit(:content, :description, :measurement, :achieved_by, :votes, :achieved, :approved, :responses, :user_id, :community_id)
	end

end
