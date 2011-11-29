# This module contains sensitive data and abstracts the data into methods that can be called # # when the confidential data is needed.
# This file should be ommited from your VSC if you are using a public remote repo like 
# Github.
module ConfidentialData
  class << self 
    # The main email used to send and receive emails from the site.
    # This is the default email used by the site's mailer.
    def main_mailer_email
      "freshdormcleaningksu@gmail.com"
    end
    
    # The password that accompanies the main mailer email address.
    def main_mailer_password
      "cleanup2011"
    end
  end
end