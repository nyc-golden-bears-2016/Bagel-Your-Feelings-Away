class CreateSpreads < ActiveRecord::Migration
  def change
    create_table :spreads do |t|
      t.string :name, null: false
    end
  end
end
