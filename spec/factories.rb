FactoryGirl.define do
  factory :feedback_message do
    name 'John Doe'
    email 'johndoe@example.com'
    subject "Subject"
    message 'Message'
  end
  
  factory :person do
    name 'John Doe'
    email 'johndoe@example.com'
    phone_number '1234567890'
  end
end