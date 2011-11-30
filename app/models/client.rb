class Client < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number
  attr_reader :phone_number # So it generates the @phone_number ivars so you can reference them
  
  validates :name, :email, :presence => true
  validates :email, :email_format => true
  validates :phone_number, :phone_number_formats => true
  
  has_many :appointments

  # Strip formatting and return raw phone number in format 1234567890
  def phone_number=(number)
    unless number =~ /[0-9]{10}/
      @phone_number = strip_phone_number(number)
    else
      @phone_number = number
    end
  end
  
  # Removes all formatting from a phone number and returns it in the format: 1234567890.
  def strip_phone_number(phone_number)
    stripped_number = phone_number
    chars_to_strip = ['(', ')', '-', '.', ' ']
    chars_to_strip.each { |char| stripped_number.gsub!(char, '') }
    stripped_number
  end
  
  private :strip_phone_number
end

# == Schema Information
#
# Table name: clients
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  email        :string(255)
#  phone_number :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

