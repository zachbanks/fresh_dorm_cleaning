require 'spec_helper'

describe Client do
  subject { Factory(:client) }
  describe "basic functions" do
    it "should have name, email, and phone number properties" do
      subject.name.should_not be_nil
      subject.email.should_not be_nil
      subject.phone_number.should_not be_nil
    end
  end
  
  describe "validations" do
    it "should validate presence of name and email" do
      subject.save
      subject.errors[:name].should be_empty
      subject.errors[:email].should be_empty
      
      subject.name = ""
      subject.email = ""
      subject.save
      subject.errors[:name].should_not be_empty
      subject.errors[:email].should include("can't be blank")
    end
    
    it "should validate email" do
      subject.save
      subject.errors[:email].should be_empty
      
      subject.email = "invalid email"
      subject.save
      subject.errors[:email].should_not be_empty
    end
    
    it "should validate phone number format" do
      subject.phone_number = "3305552422"
      subject.save
      subject.errors[:phone_number].should be_empty       
  
      subject.phone_number = "invalid number"
      subject.save
      subject.errors[:phone_number].should_not be_empty
    end
    
    it "should not run phone number formatter validations if no number is given" do
      c = Client.new(:name => "John Doe", :email => 'jd@example.com')
      c.valid?.should be_true
      c.save
      c.errors[:phone_number].should be_empty
    end
    
    it "should not save if the appointment model doesn't pass its validations" do
      a = Appointment.new # Invalid appointment.
      c = Client.new(:name => "John Doe", :email => "johndoe@example.com")
      c.appointments << a
      c.valid?.should be_false
    end
  end
  
  describe "phone number formatting" do
    it "should strip formatting and store number in format 3305557477" do
      subject.phone_number = "(123) 456-7890"
      subject.phone_number.should == '1234567890'
      
      subject.phone_number = "123-456-7890"
      subject.phone_number.should == '1234567890'
      
      subject.phone_number = "123.456.7890"
      subject.phone_number.should == '1234567890'
    end
  end
  
  describe "assocations" do
    it { should have_many(:appointments) }
  end
end

# == Schema Information
#
# Table name: people
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  email        :string(255)
#  phone_number :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

