require 'spec_helper'

describe ApplicationHelper do
  describe 'title' do
    it "should return a base title if not given a page does not have a more specfic title set" do
      title.should == "Fresh Dorm Cleaning"
    end
  end
end