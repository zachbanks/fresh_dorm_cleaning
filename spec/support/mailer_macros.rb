module MailerMacros
  def emails
    ActionMailer::Base.deliveries
  end
  
  def last_email
    ActionMailer::Base.deliveries.last
  end
  
  def reset_emails
    ActionMailer::Base.deliveries = []
  end
end