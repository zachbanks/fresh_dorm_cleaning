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
    
    it "should not save if the client model doesn't pass its validations" do
      a = Appointment.new(date: DateTime.now)
      c = Client.new # Invalid client.
      a.client = c
      a.valid?.should be_false
    end
  end
  
  describe "associations" do
    it { should belong_to(:client) }
  end
end
# == Schema Information
#
# Table name: appointments
#
#  id         :integer         not null, primary key
#  date       :datetime
#  created_at :datetime
#  updated_at :datetime
#  client_id  :integer
#

