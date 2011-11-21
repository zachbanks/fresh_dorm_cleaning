class PagesController < ApplicationController
  def home
    @title = "Home"
  end
  
  def about
    @title = "About Us"
  end
end
