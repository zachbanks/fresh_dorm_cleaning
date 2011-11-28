require "spec_helper"

describe FeedbackMessage do
  before(:each) do
    @attr = { :name => 'John Doe', :email => 'johndoe@example.com', :subject => "Subject", :message => "Message" }
  end
  
  describe "validations" do
    before(:each) do
      @feedback = FeedbackMessage.new(@attr)
      @feedback.save
    end
    context "success" do
      it "should allow valid emails" do
        @feedback.errors.empty?.should be_true
      end
    end
    
    context "failure" do
      it "should give an error for invaild emails" do
        feedback = FeedbackMessage.new
        feedback.save
        feedback.errors.any?.should be_true
        feedback.errors[:email][1].should =~ /not formatted properly/ # Crude, but it works.
      end
      # it "should reject names shorter than 6 characters" do
      #   name = 'a'
      #   feedback = FeedbackMessage.new(@attr.merge(:name => name))
      #   feedback.should_not be_valid
      # end
      # it "should reject names longer than 40" do
      #   name = 'a' * 51
      #   feedback = FeedbackMessage.new(@attr.merge(:name => name))
      #   feedback.should_not be_valid
      # end
      # it "should reject names shorter than 4 characters" do
      #   subject = 'a'
      #   feedback = Feedback.new(@attr.merge(:subject => subject))
      #   feedback.should_not be_valid
      # end
      # it "should reject subjects longer than 40" do
      #   subject = 'a' * 51
      #   feedback = Feedback.new(@attr.merge(:subject => subject))
      #   feedback.should_not be_valid
      # end
    end
  end
end