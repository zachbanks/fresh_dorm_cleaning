require "spec_helper"

describe Mailer do
  let(:feedback) { Factory(:feedback_message) }
  let!(:mail) { Mailer.feedback(feedback).deliver }

  it "should deliver an email successfully" do
    emails.count.should == 1
  end

  it "should be sent to the main mailer email" do
    email = ConfidentialData::main_mailer_email
    mail.to.should == [email]
  end

end
