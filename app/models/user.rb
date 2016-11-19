class User < ApplicationRecord

  before_save { email.downcase! }
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
  validates :password, presence: true, length: { minimum: 10 }
  # here we insert a valiation attempt for passwords which will then be cross
  # checked against our user_test.rb password tests, here we dictate the rules
  # by which the app must operate, whilst in the test file, create instances
  # to gain a specific outcome

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end                                              

end
