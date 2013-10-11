class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  validates :name, presence: true

  emailFormatValidation = /[a-z.-]+@[a-z \d -.]+[.][a-z]+/i
  validates :email, format: {with: emailFormatValidation}, uniqueness: true

  validates :password, length: {within: 3..20, too_long: "is way too many characters. Must be less than 20.", too_short: "needs to be more than 3 characters por favor"}, confirmation: true
end