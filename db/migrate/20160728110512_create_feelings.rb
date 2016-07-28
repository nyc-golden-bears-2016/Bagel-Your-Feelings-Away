class CreateFeelings < ActiveRecord::Migration
  def change
    create_table :feelings do |t|
      t.string :name, null: false
      t.integer :response_id, null: false
      t.integer :rating, null: false

      t.timestamps(null: false)
    end
  end
end
