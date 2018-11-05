class CocktailsController < ApplicationController

  before_action :set_cocktail, only: %i[show edit update destroy]

  def index
    @cocktails = Cocktail.all
    @results_found = true
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(set_params)
    @cocktail.save!
    redirect_to cocktails_path
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  def top
    @cocktails = Cocktail.where('name like ?', '%' + params[:query] + '%')
    @results_found = @cocktails.length.positive? ? true : false
    render :index
  end

  private

  def set_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
