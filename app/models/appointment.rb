class Appointment < ActiveRecord::Base
  attr_accessible :date
  
  belongs_to :client
end
