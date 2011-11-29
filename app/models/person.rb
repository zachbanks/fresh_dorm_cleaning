class Person < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number
  attr_reader :phone_number # So it generates the @phone_number ivars so you can reference them
  
  validates :name, :email, :presence => true
  validates :email, :email_format => true
  validates :phone_number, :phone_number_formats => true

  # Strip formatting and return raw phone number in format 1234567890
  def phone_number=(number)
    unless number =~ /[0-9]{10}/
      new_number = number
      chars = ['(', ')', '-', '.', ' ']
      chars.each { |c| new_number.gsub!(c, '') }
      @phone_number = new_number
    else
      @phone_number = number
    end
  end
end

# == Schema Information
#
# Table name: people
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  email        :string(255)
#  phone_number :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

