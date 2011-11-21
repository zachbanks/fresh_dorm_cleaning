require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "should get the page without problems" do
      get :home
      response.should be_success
    end
  end
  
  describe "GET 'about'" do
    it "should get the page without problems" do
      get :about
      response.should be_success
    end
  end
  
end
