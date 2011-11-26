class FeedbackController < ApplicationController
  def new
    @title = "Contact"
    @feedback = Feedback.new(:id => 1)
  end
  
  def create
    @title = "Contact"
    @feedback = Feedback.new(params[:feedback])
    if @feedback.save
      redirect_to contact_path, :notice => "Thanks for your message! We will be in touch shortly!"
    else
      render :action => :new
    end
  end
end