class StaticPagesController < ApplicationController

  def home
  	@micropost = current_user.microposts.build if logged_in?
  	@feed_items = current_user.feed.sort_by_time.paginate(page: params[:page]) if logged_in?
  	@top_goals = current_user.feed.sort_by_votes.paginate(page: params[:page]) if logged_in?
  end

  def about
  end

  def contact
  end
  
end
