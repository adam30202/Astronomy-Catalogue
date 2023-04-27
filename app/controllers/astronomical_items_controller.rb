class AstronomicalItemsController < ApplicationController

  before_action :check_for_login

  def author_index
    @astronomical_items = AstronomicalItem.where(user_id: @current_user.id)
  end
  
  def new
    @astronomical_item = AstronomicalItem.new
  end

  def create

    astronomical_item = AstronomicalItem.new params_astronomical_item
    astronomical_item.user_id = @current_user.id
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      astronomical_item.image = req["public_id"]
      astronomical_item.save
      redirect_to astronomical_item
    else
      flash[:error] = "Please upload an image"
      astronomical_item.delete
      redirect_to new_astronomical_item_path
    end
    
  end


  def edit
    @astronomical_item = AstronomicalItem.find params[:id]
  end

  def update
    astronomical_item = AstronomicalItem.find params[:id]
    astronomical_item.update params_astronomical_item

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      astronomical_item.image = req["public_id"]
      astronomical_item.save
    end
    
    redirect_to astronomical_item
  end

  def index
    @astronomical_items = AstronomicalItem.paginate(page: params[:page], per_page: 10)
  end

  def show
    @astronomical_item = AstronomicalItem.find params[:id]
    @item_author = User.find @astronomical_item.user_id
    @bookmark_exists = Bookmark.where(user_id: @current_user.id, astronomical_item_id: @astronomical_item.id ) == [] ? false : true
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
