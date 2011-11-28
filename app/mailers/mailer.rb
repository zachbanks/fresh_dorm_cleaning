class Mailer < ActionMailer::Base
  def feedback(message)
    @message = message
    mail :to => "freshdormcleaningknt@gmail.com", :from => message.email, :subject => "Contact Us Message from #{@message.name}"
  end
end