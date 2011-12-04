class Appointment < ActiveRecord::Base
  attr_accessible :date, :client
  
  validates :date, :presence => true
  
  belongs_to :client
  accepts_nested_attributes_for :client # Runs client validations when saving an appointment.
end
