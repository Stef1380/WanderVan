class PagesController < ApplicationController
  def home
    @vans = Van.all
  end
end
