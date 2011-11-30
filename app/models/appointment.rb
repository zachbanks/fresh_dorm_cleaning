class Appointment < ActiveRecord::Base
  attr_accessible :date
  
  validates :date, :presence => true
  
  belongs_to :client
end
