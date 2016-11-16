class User < ApplicationRecord
  before_save { email.downcase! }
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  #we use regex here to match the email against acceptable input params
  #assigning our "okayed" regex params as a constant allows us to cleanly call
end
