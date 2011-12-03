require 'spec_helper'

describe Appointment do
  subject { Appointment.new }
  
  describe "basic functions" do
    it "should have an appointment date" do
      subject.date = DateTime.now
      subject.date.should_not be_nil
    end
    
    it "should have access to the client's contact information" do
      client = Factory(:client)
      subject.client = client
      subject.client.should_not be_nil
    end
  end
  
  describe "validations" do
    it { should validate_presence_of(:date) }
  end
  
  describe "associations" do
    it { should belong_to(:client) }
  end
end
