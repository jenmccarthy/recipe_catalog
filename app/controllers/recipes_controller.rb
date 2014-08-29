class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
    render("recipes/index.html.erb")
  end
  
  def new
    @recipe = Recipe.new
    render("recipes/new.html.erb")
  end
  
  def create
    @recipe = Recipe.create(params[:recipe])
    if @recipe.valid?
      flash[:notice] = "This recipe has been saved to your catalog"
      redirect_to("/recipes")
    else
      render("recipes/new/html.erb")
    end
  end
  
 
end