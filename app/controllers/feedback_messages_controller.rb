class FeedbackMessagesController < ApplicationController
  expose(:feedback_message)
  
  def new
    @title = "Contact"
  end

  def create
    @title = "Contact"
    if feedback_message.save
      Mailer.feedback(feedback_message).deliver
      redirect_to contact_path, :notice => "Thanks for your message! We will be in touch shortly!"
    else
      render :action => :new
    end
  end
end
