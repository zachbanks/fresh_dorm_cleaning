class PhoneNumberFormatsValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    unless correctly_formatted?(value)
      object.errors[attribute] << (options[:message] || "is not formatted properly")
    end
  end
  
  private
  
  # Returns true if phone_number matches one of the supported
  # formats.
  #
  # Supported phone number formats: 
  # (123) 456-7890
  # 123-456-7890
  # 123.456.7890
  # 1234567890
  def correctly_formatted?(phone_number)
    numbers = /[0-9]{10}/ # 1234567890
    dots = /[0-9]{3}\.[0-9]{3}\.[0-9]{4}/ # 123.456.7890
    dashes = /[0-9]{3}\-[0-9]{3}\-[0-9]{4}/ # 123-456-7890
    parenthesis = /\([0-9]{3}\) [0-9]{3}\-[0-9]{4}/ # (123) 456-7890
    
    formats = [numbers, dots, dashes, parenthesis]
    is_correct = false
    
    formats.each do |format|
      if phone_number =~ format
        is_correct = true
        break
      end
    end
    is_correct
  end
end