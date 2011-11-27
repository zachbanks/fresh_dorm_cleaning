class EmailFormatValidator < ActiveModel::EachValidator
  def validate_each(object, attribute, value)
    # "Dont get caught up in the regular expression, you will go blind from the sheer awesomeness of it."
    unless value =~ /^([\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+\.)*[\w\!\#$\%\&\'\*\+\-\/\=\?\^\`{\|\}\~]+@((((([a-z0-9]{1}[a-z0-9\-]{0,62}[a-z0-9]{1})|[a-z])\.)+[a-z]{2,6})|(\d{1,3}\.){3}\d{1,3}(\:\d{1,5})?)$/i
      object.errors[attribute] << (options[:message] || "is not formatted properly")
    end
  end
end