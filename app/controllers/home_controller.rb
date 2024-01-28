class HomeController < ApplicationController
  def index
    @hero_images = HeroImage.all
  end
end
