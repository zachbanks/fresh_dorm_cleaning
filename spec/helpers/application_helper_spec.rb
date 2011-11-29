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
  
  describe "format_phone_number" do
    let(:number) { '1234567890' }
    
    it "should default to dashed when no format is given" do
     formatted_number = format_phone_number(number)
     formatted_number.should == '123-456-7890'
    end
    
   it "should format phone number properly based on format given" do
     formatted_number = format_phone_number(number, :dashed)
     formatted_number.should == '123-456-7890'
     
     formatted_number = format_phone_number(number, :dotted)
     formatted_number.should == '123.456.7890'
     
     formatted_number = format_phone_number(number, :parenthesis)
     formatted_number.should == '(123) 456-7890'
   end
   
   it "should return nil if a bad format is given" do
     formatted_number = format_phone_number(number, :bad_format)
     formatted_number.should be_nil
   end
  end
end