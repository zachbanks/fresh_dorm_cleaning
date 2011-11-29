module ApplicationHelper
  def render_title
    base_title = "Fresh Dorm Cleaning"
    @title ? "#{base_title} | #{@title}" : base_title
  end
  
  # Takes a phone number in the format of 1234567890 and returns it in a specified format. Returns nil if bad format is given.
  # Supported formats:
  # :dashed (default) - 123-456-7890
  # :dotted - 123.456.7890
  # :parenthesis - (123) 456-7890
  def format_phone_number(phone_number, format=:dashed)
    supported_formats = [:dashed, :dotted, :parenthesis]
    return nil unless supported_formats.include?(format)
    
    formatted_number = ''
    number = phone_number.to_i
    
    case format
    when :dashed
      formatted_number = number_to_phone(number)
    when :dotted
      formatted_number = number_to_phone(number, :delimiter => '.')
    when :parenthesis
      formatted_number = number_to_phone(number, :area_code => true)
    end
  end
end
