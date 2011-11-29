require 'spec_helper'

describe ApplicationHelper do
  describe 'page_title' do
    it "should return a base title if not given a page does not have a more specfic title set" do
      render_title.should == "Fresh Dorm Cleaning"
    end
    
    it "should set the title of a page and format it properly" do
      @title = "Homepage"
      render_title.should == "Fresh Dorm Cleaning | Homepage"
    end
  end
end