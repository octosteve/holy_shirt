class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      redirect_to @tag # /tags/20
    else
      render :new
    end
    # redirect_to '/tags/' + tag.id # /tags/20
    # redirect_to tag_path(tag.id) # /tags/20
    # redirect_to tag_path(tag) # /tags/20
  end

  def show
  end

  def edit
  end

  def update
    if @tag.update(tag_params)
      redirect_to @tag
    else
      render :edit
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_path
  end

  private
  def tag_params
    params.require(:tag).permit(:name)
  end

  def set_tag
    @tag = Tag.find(params[:id])
  end
end
