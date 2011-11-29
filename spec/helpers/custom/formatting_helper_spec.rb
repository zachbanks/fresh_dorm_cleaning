describe FormattingHelper do
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
   
   it "should return original number if a bad format is given" do
     formatted_number = format_phone_number(number, :bad_format)
     formatted_number.should == number
   end
   
   it "should accept an integer instead of a string too" do
     formatted_number = format_phone_number(number.to_i)
     formatted_number.should == '123-456-7890'
   end
  end
end