class BagelConfiguration < ActiveRecord::Base
  has_many :toppings
  belongs_to :user
  belongs_to :spread
  belongs_to :bagel

  validates :toppings_id, :user_id, :spread_id, :bagel_id, presence: true
end
