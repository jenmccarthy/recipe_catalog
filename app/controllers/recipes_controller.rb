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
      render("recipes/new.html.erb")
    end
  end
  
  def edit
    @recipe = Recipe.find(params[:id])
    render('recipes/edit.html.erb')
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe])
      flash[:notice] = "This recipe has been successfully updated"
      redirect_to("/recipes")
    else
      render("recipes/edit.html.erb")
    end
  end
  
  def delete
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = "This recipe has been deleted from your catalog"
    redirect_to("/recipes")
  end
  
  def show
    @recipe = Recipe.find(params[:id])
    @tag = @recipe.tag
    render("recipes/show.html.erb")
  end

 
end