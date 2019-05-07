class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(id: params[:id])
  end

  private 

  def cat_params
    params.require(:cat).permit(:name, :birth_date, :sex, :color) 
  end
end
