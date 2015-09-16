class ShirtsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @shirts = Shirt.all
  end

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.new(shirt_params)
    if @shirt.save
      flash[:notice] = "You successfully create a shirt! ZOMG"
      redirect_to @shirt
    else
      render :new
    end
  end

  def show
    @shirt = Shirt.find(params[:id])
  end

  def edit
    @shirt = Shirt.find(params[:id])
  end

  def update
    @shirt = Shirt.find(params[:id])
    if @shirt.update(shirt_params)
      flash[:notice] = "#{@shirt.name} has been updated"
      redirect_to @shirt
    else
      render :edit
    end
  end

  private
  def shirt_params
    params.require(:shirt).permit(:name, :artist, :image_url, :url, tag_ids: [])
  end
end
