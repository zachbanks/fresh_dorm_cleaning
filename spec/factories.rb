FactoryGirl.define do
  factory :feedback_message do
    name 'John Doe'
    email 'johndoe@example.com'
    subject "Subject"
    message 'Message'
  end
  
  factory :client do
    name 'John Doe'
    email 'johndoe@example.com'
    phone_number '1234567890'
    campus 'Kent State Unversity'
    dorm 'Wright'
    room_number 320
  end
end