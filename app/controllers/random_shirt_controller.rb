class RandomShirtController < ApplicationController
  def index
    site = ["http://shirt.woot.com", "http://teefury.com", "http://riptapparel.com"].sample
    redirect_to site
  end
end
