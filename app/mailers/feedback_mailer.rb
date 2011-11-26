class FeedbackMailer < ActionMailer::Base
  default :to => 'cityboyzoutdoors@gmail.com'
  def send_feedback(sender)
    @sender = sender
    mail(:from => sender.email, :subject => "#{sender.email} - #{sender.subject}")
  end
end