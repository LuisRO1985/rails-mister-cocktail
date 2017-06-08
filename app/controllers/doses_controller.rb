class DosesController < ApplicationController
  before_action :set_dose, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_params)
    @cocktail  = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
     if @dose.save
      redirect_to cocktail_path(@cocktail)
     else
      render :new
    end
  end

  # def destroy
  #   @dose = Dose.find(params[:id])
  #   @dose.destroy
  #   redirect_to cocktail_path
  # end

  private

  def set_dose
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
