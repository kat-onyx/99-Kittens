class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
    # @cat = Cat.find_by(id: params[:id]) alternative way
  end

  def create
    @cat = Cat.new(cat_params)
    
    if @cat.save
      redirect_to cats_url
    else
      flash[:errors] = @cat.errors.full_messages
      render :new
    end

  end

  private 

  def cat_params
    params.require(:cat).permit(:name, :birth_date, :sex, :color, :description) 
  end
end
