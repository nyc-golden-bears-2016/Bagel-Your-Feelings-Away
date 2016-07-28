class Feeling < ActiveRecord::Base
  belongs_to :response

  validates :response_id, :name, :rating, presence: true
end
