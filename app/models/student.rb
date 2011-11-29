class Student < ActiveRecord::Base
  attr_accessible :name, :email, :phone_number
  attr_writer :phone_number # So it generates an @phone_number ivar.

  validates :name, :email, :presence => true
  validates :email, :email_format => true
  validates :phone_number, :phone_number_formats => true

  # Strip formatting and return raw phone number in format 1234567890
  def phone_number
    unless @phone_number =~ /[0-9]{10}/
      number = @phone_number
      chars = ['(', ')', '-', '.', ' ']
      chars.each { |c| number.gsub!(c, '') }
      return number
    else
      @phone_number
    end
  end
end

# == Schema Information
#
# Table name: students
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  email        :string(255)
#  phone_number :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

