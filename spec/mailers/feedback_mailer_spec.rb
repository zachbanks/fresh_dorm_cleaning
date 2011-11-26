require "spec_helper"

describe FeedbackMailer do

  before do
    ActionMailer::Base.delivery_method = :test
    ActionMailer::Base.perform_deliveries = true
    ActionMailer::Base.deliveries = []
  end

  let(:feedback) { mock_model(Feedback).as_null_object }
  let!(:mail) { FeedbackMailer.send_feedback(feedback).deliver }

  it "should deliver an email successfully" do
    ActionMailer::Base.deliveries.size.should == 1
  end

  it "should be sent to freshdormcleaningknt@gmail.com" do
    mail.to.should == ['freshdormcleaningknt@gmail.com']
  end

end
