class Bagel < ActiveRecord::Base
  has_many :bagel_configurations
  validates :name, presence: true
end
