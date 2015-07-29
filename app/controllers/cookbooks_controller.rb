class CookbooksController < ApplicationController
  def show
    @cookbook = Cookbook.find(params[:id])
    @owner = User.find(@cookbook.user_id).name
    @recipes = @cookbook.recipes
  end

  def new
    @cookbook = Cookbook.new
  end

  def create
  end

  private

  def cookbook_params
    params.require(:cookbook).permit(:name, :description, :user_id)
  end

end
