class CreateBagelConfigutationsToppings < ActiveRecord::Migration
  def change
    create_table :bagel_configurations_toppings do |t|
      t.integer :topping_id, foreign_key: true, index: true
      t.integer :bagel_configuration_id, foreign_key: true, index: true
    end
  end
end
