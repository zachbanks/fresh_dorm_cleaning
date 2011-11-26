FactoryGirl.define do
  factory :feedback do
    name 'John Doe'
    email 'johndoe@example.com'
    subject "Subject line"
    message 'Message contents.'
  end
end