class RecipesController < ApplicationController
  def index
  	@recipe_name = params[:recipe_name] || "gelato"
  	@recipes_found = Recipe.search @recipe_name
  end
end
