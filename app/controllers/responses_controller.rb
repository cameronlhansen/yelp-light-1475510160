class ResponsesController < ApplicationController
  def index
    @responses = Response.all
  end

  def show
    @response = Response.find(params[:id])
  end

  def new
    @response = Response.new
  end

  def create
    @response = Response.new
    @response.ownership_id = params[:ownership_id]
    @response.review_id = params[:review_id]
    @response.content = params[:content]

    if @response.save
      redirect_to "/responses", :notice => "Response created successfully."
    else
      render 'new'
    end
  end

  def edit
    @response = Response.find(params[:id])
  end

  def update
    @response = Response.find(params[:id])

    @response.ownership_id = params[:ownership_id]
    @response.review_id = params[:review_id]
    @response.content = params[:content]

    if @response.save
      redirect_to "/responses", :notice => "Response updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @response = Response.find(params[:id])

    @response.destroy

    redirect_to "/responses", :notice => "Response deleted."
  end
end