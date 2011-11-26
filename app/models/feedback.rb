class Feedback
  include ActiveModel::Validations
  
  # TODO: Change this horrible programming practice!
  $EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i # TODO: Fix!!!
  
  # Id required by form.
  attr_accessor :id, :name, :email, :subject, :message
  attr_reader :data
  
  # ===============
  # = Validations =
  # ===============
  
  validates :name, :email, :subject, :message, :presence => true
  validates :email, :format => { :with => $EMAIL_REGEX }
  validates :name, :subject, :length => { :within => 4..40 }
  
  # ==================
  # = Public Methods =
  # ==================
  
  def initialize(attributes={})
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    @attributes = attributes
  end
  
  def read_attribute_for_validation(key)
    @attributes[key]
  end
  
  def to_key
  end
  
  def save!
    if self.valid?
      FeedbackMailer.send_feedback(self).deliver
      true
    else
      false
    end
  end
end