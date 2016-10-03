class RestaurantPhotosController < ApplicationController
  def index
    @restaurant_photos = RestaurantPhoto.all
  end

  def show
    @restaurant_photo = RestaurantPhoto.find(params[:id])
  end

  def new
    @restaurant_photo = RestaurantPhoto.new
  end

  def create
    @restaurant_photo = RestaurantPhoto.new
    @restaurant_photo.user_id = params[:user_id]
    @restaurant_photo.restaurant_id = params[:restaurant_id]
    @restaurant_photo.review_id = params[:review_id]
    @restaurant_photo.photo = params[:photo]

    if @restaurant_photo.save
      redirect_to "/restaurant_photos", :notice => "Restaurant photo created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant_photo = RestaurantPhoto.find(params[:id])
  end

  def update
    @restaurant_photo = RestaurantPhoto.find(params[:id])

    @restaurant_photo.user_id = params[:user_id]
    @restaurant_photo.restaurant_id = params[:restaurant_id]
    @restaurant_photo.review_id = params[:review_id]
    @restaurant_photo.photo = params[:photo]

    if @restaurant_photo.save
      redirect_to "/restaurant_photos", :notice => "Restaurant photo updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant_photo = RestaurantPhoto.find(params[:id])

    @restaurant_photo.destroy

    redirect_to "/restaurant_photos", :notice => "Restaurant photo deleted."
  end
end
