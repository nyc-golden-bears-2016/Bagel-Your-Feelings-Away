class User < ActiveRecord::Base
  has_many :bagel_configurations
  has_many :responses
  has_secure_password
  validates :username, :email, presence: true
end
