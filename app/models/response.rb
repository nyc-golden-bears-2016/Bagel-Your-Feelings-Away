class Response < ActiveRecord::Base
  belongs_to :user
  has_many :feelings
  validates :user_id, :answer, presence: true
end
