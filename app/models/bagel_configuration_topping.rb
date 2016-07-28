class BagelConfigurationTopping < ActiveRecord::Base
  belongs_to :topping, through: :bagel_configurations_toppings
  belongs_to :bagel_configuration, through: :bagel_configurations_toppings
end
