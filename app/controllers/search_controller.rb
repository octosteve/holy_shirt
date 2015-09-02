class SearchController < ApplicationController
  def index
    @shirts = Search.for(params[:q])
  end
end
