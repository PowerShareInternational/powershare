class MicropostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy, :update]

	def index
		@microposts = Micropost.paginate(page: params[:page]).order(:created_at)
	end

  def show
    @micropost = Micropost.find(params[:id])
  end

  def new
    @micropost = Micropost.new
  end

	def create
		@micropost = current_user.microposts.build(micropost_params)
		@micropost.community_id = current_user.community_id
    if @micropost.save
      flash[:success] = "Thank you for your submission! Your goal must be verified before it is viewable by the public. You may be contacted by PowerShare to clarify some details."
    else
    	flash[:danger] = "If you'd like to submit a new goal, please complete the entire form."
    end
    redirect_to root_url
	end

	def update
    @micropost = Micropost.find(params[:id])
    if @micropost.update_attributes(micropost_params)
      if @micropost.content != ""
        @micropost.update_attribute(:approved, true)
        flash[:success] = "The goal has been approved."
  	  else
  		  flash[:danger]= "Please transcribe the details of the goal."
      end
  	end
  	redirect_to microposts_url
  end

	def destroy
		Micropost.find(params[:id]).destroy
    flash[:success] = "This goal has been deleted from the system."
    redirect_to microposts_url
	end

  def new_response
    flash[:success] = params[:comment]
    redirect_to :back
  end

	private

	def micropost_params
		params.require(:micropost).permit(:content, :description, :measurement, :achieved_by, :votes, :achieved, :approved, :responses, :user_id, :community_id)
	end

end
