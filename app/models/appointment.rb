class Appointment < ActiveRecord::Base
  attr_accessible :date
  
  has_one :person
end
