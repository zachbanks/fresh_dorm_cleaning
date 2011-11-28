require "spec_helper"

describe Mailer do

  before do
    ActionMailer::Base.delivery_method = :test
    ActionMailer::Base.perform_deliveries = true
    ActionMailer::Base.deliveries = []
  end

  let(:feedback) { mock_model(FeedbackMessage).as_null_object }
  let!(:mail) { Mailer.feedback(feedback).deliver }

  it "should deliver an email successfully" do
    ActionMailer::Base.deliveries.size.should == 1
  end

  it "should be sent to freshdormcleaningknt@gmail.com" do
    mail.to.should == ['freshdormcleaningknt@gmail.com']
  end

end