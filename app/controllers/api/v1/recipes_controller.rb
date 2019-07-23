class Api::V1::RecipesController < ApplicationController

  def index
    render json: RecipesSerializer.new(Recipe.all)
  end

  def show
    render json: RecipesSerializer.new(Recipe.find(params[:id]))
  end

end
