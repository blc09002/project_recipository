class StaticPagesController < ApplicationController
  def home
  	    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
      @recipe = current_user.recipes.build
      @feeds_items = current_user.feeds.paginate(page: params[:page])
      

    end
  end

  def help
  end

  def about

  end

  def contact
  	
  end
end
