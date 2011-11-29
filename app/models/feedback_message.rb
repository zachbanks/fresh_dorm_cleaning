class FeedbackMessage < ActiveRecord::Base
  attr_accessible :name, :email, :subject, :message
  validates :name, :email, :subject, :message, :presence => true
  validates :email, :email_format => true
end

# == Schema Information
#
# Table name: feedback_messages
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  subject    :string(255)
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

