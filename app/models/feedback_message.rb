class FeedbackMessage < ActiveRecord::Base
  attr_accessible :name, :email, :subject, :message
  validates :name, :email, :subject, :message, :presence => true
  validates :email, :email_format => true
end
