class FeedbackMailer < ActionMailer::Base
  default :to => 'freshdormcleaningknt@gmail.com'
  def send_feedback(sender)
    @sender = sender
    mail(:from => sender.email, :subject => "Contact Us - #{sender.name} - #{sender.subject}")
  end
end