class AstronomicalItemsController < ApplicationController

  def new
    @astronomical_item = AstronomicalItem.new
  end

  def create
    astronomical_item = AstronomicalItem.create params_astronomical_item
    redirect_to astronomical_item
  end


  def edit
    @astronomical_item = AstronomicalItem.find params[:id]
  end

  def update
    astronomical_item = AstronomicalItem.find params[:id]
    astronomical_item.update params_astronomical_item
    redirect_to astronomical_item
  end

  def index
    @astronomical_items = AstronomicalItem.all
  end

  def show
    @astronomical_item = AstronomicalItem.find params[:id]
  end

  def destroy
    astronomical_item = AstronomicalItem.find params[:id]
    astronomical_item.destroy
    redirect_to astronomical_items_path
  end

  private
  def params_astronomical_item
    params.require(:astronomical_item).permit(:name, :category, :summary, :image)
  end

end
