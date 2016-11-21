class User < ApplicationRecord

  attr_accessor :remember_token
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  #we use regex here to match the email against acceptable input params
  #assigning our "okayed" regex params as a constant allows us to cleanly call

  has_secure_password
  # http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html
  # most secure password machinery can be implemented with this single inbuilt
  # rails method, it include the following functionality:

  # The ability to save a securely hashed password_digest attribute to the database
  # A pair of virtual attributes (password and password_confirmation),
  #       including presence validations upon object creation and a validation
  #       requiring that they match
  # An authenticate method that returns the user when the password is
  #       correct (and false otherwise)
  validates :password, presence: true, length: { minimum: 10 }, allow_nil: true
  # here we insert a valiation attempt for passwords which will then be cross
  # checked against our user_test.rb password tests, here we dictate the rules
  # by which the app must operate, whilst in the test file, create instances
  # to gain a specific outcome

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
  
end
