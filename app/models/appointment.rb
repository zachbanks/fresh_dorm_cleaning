class Appointment < ActiveRecord::Base
  attr_accessible :date, :client
  
  validates :date, :presence => true
  
  belongs_to :client
  accepts_nested_attributes_for :client # Runs client validations when saving an appointment.
end
# == Schema Information
#
# Table name: appointments
#
#  id         :integer         not null, primary key
#  date       :datetime
#  created_at :datetime
#  updated_at :datetime
#  client_id  :integer
#

