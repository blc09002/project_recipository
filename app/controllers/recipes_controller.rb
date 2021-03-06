class RecipesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy


  def index
  end

  def create
  	  @recipe = current_user.recipes.build(params[:recipe])
    if @recipe.save
      flash[:success] = "Recipe created!"
      redirect_to root_url
    else
      @feeds_items = []	
      render 'static_pages/home'
    end

  end

  def destroy
  	 @recipe.destroy
    redirect_to root_url
  end

  private
    def correct_user
      @recipe = current_user.recipes.find_by_id(params[:id])
      redirect_to root_url if @recipe.nil?
    end
end