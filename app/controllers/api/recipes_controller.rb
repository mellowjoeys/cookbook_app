class Api::RecipesController < ApplicationController
  def index
    puts "=" * 50
    p current_user
    puts "=" * 50

    # SELECT *
    # FROM recipes
    # WHERE ingredients iLIKE '%egg%'
    # OR title iLIKE '%egg%'
    # OR directions iLIKE '%egg';

    @recipes = Recipe.all

    search_term = params[:search]
    if search_term # checks if there was a search_term. 
      @recipes = @recipes.where(
                              "ingredients iLIKE ? OR title iLIKE ? OR directions iLIKE ?", 
                              "%#{search_term}%", 
                              "%#{search_term}%", 
                              "%#{search_term}%"
                              ) 
                            # "?" is for sanitizing the inputs. The argument after the first comma is entered into the question mark. 
    end

    @recipes = @recipes.order(:id)
    # @recipes = @recipes.order(:id => :asc) is the long-hand of the above. 
    # @recipes = @recipes.order(id: :desc)
    # @recipes = @recipes.order(:id => :desc)
    # @recipes = @recipes.order(id: :asc) the above all work and are different ways to write ascending and descending ordering. 


    render 'index.json.jb' # you start out with "index"
  end

  def create
    @recipe = Recipe.new(
                          title: params[:title],
                          chef: params[:chef],
                          ingredients: params[:ingredients],
                          directions: params[:directions],
                          prep_time: params[:prep_time],
                          image_url: params[:image_url]
                        )
    @recipe.save
    render 'show.json.jb'
  end

  def show
    # recipe_id = params[:id] this is one way 
    # @recipe = Recipe.find_by(id: recipe_id)
    @recipe = Recipe.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.title = params[:title] || @recipe.title
    @recipe.chef = params[:chef] || @recipe.chef
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.ingredients = params[:ingredients] || @recipe.ingredients
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.image_url = params[:image_url] || @recipe.image_url

    @recipe.save
    render 'show.json.jb'
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    render json: {message: "Successfully Destroyed Recipe."}
  end
end