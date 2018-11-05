class DosesController < ApplicationController

  before_action :set_dose, only: %i[show edit update destroy]

  def index
    @dose = Dose.all
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    id = params[:cocktail_id]
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = id.to_i
    @dose.save!
    redirect_to cocktail_path(id)
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
