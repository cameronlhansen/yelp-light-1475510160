class RestaurantsAndTagsController < ApplicationController
  def index
    @restaurants_and_tags = RestaurantsAndTag.all
  end

  def show
    @restaurants_and_tag = RestaurantsAndTag.find(params[:id])
  end

  def new
    @restaurants_and_tag = RestaurantsAndTag.new
  end

  def create
    @restaurants_and_tag = RestaurantsAndTag.new
    @restaurants_and_tag.restaurant_id = params[:restaurant_id]
    @restaurants_and_tag.tag_id = params[:tag_id]

    if @restaurants_and_tag.save
      redirect_to "/restaurants_and_tags", :notice => "Restaurants and tag created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurants_and_tag = RestaurantsAndTag.find(params[:id])
  end

  def update
    @restaurants_and_tag = RestaurantsAndTag.find(params[:id])

    @restaurants_and_tag.restaurant_id = params[:restaurant_id]
    @restaurants_and_tag.tag_id = params[:tag_id]

    if @restaurants_and_tag.save
      redirect_to "/restaurants_and_tags", :notice => "Restaurants and tag updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurants_and_tag = RestaurantsAndTag.find(params[:id])

    @restaurants_and_tag.destroy

    redirect_to "/restaurants_and_tags", :notice => "Restaurants and tag deleted."
  end
end
