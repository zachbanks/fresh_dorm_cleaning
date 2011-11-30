require 'spec_helper'

describe Appointment do
  describe "basic functions" do
    it "should have an appointment date"
    it "should have access to the person's contact information"
  end
  
  describe "validations" do
    it "should validate presence of the appointment date"
  end
  
  describe "associations" do
    it { should have_one(:client) }
  end
end