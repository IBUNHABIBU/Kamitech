class HomeController < ApplicationController
  def index
    @hero_images = HeroImage.all
    @ourservices = Ourservice.all
  end
end
