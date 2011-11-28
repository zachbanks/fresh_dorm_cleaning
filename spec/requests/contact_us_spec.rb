require 'spec_helper'

describe "Contact Us" do
  it "should email website admin" do
    message = Factory(:feedback_message)
    visit contact_path
    fill_in "Name", :with => message.name
    fill_in "Email", :with => message.email
    fill_in "Subject", :with => message.subject
    fill_in "Message", :with => message.message
    click_button "Submit"
    page.should have_content("Thanks for your message")
    last_email.to.should include("freshdormcleaningknt@gmail.com")
  end
  
  it "should not email when there is fields are blank" do
    visit contact_path
    click_button "Submit"
    emails.should be_empty
  end
end