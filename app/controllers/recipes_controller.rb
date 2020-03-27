class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  def index
    @recipes = Recipe.all
  end
  
  def show
  end

  def new 
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.equipment_id = 2
    @recipe.extraction_time_id = 2
    @recipe.sample_id = 1
    if @recipe.save
      redirect_to recipe_path(@recipe)
    else 
      render 'new'
    end
  end

  def edit
  end

  def update
    @recipe.update(params[:recipe])
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end


  private

  def recipe_params
    params.require(:recipe).permit(:temp, :note)
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
