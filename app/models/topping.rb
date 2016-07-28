class Topping < ActiveRecord::Base
  belongs_to :bagel_configuration

  validates :name, presence: true
end
