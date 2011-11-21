require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    it "should be successfull" do
      get :home
      response.should be_success
    end
  end
  
end
