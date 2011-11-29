class Mailer < ActionMailer::Base
  def feedback(message)
    @message = message
    mail :to => ConfidentialData.main_mailer_email, :from => message.email, :subject => "Contact Us Message from #{@message.name}"
  end
end