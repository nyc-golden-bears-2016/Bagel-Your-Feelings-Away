class CreateBagelConfiguration < ActiveRecord::Migration
  def change
    create_table :bagel_configuration do |t|
      t.string :name, null: false
      t.integer :bagel_id, null: false, foreign_key: true
      t.integer :spread_id, null: false, foreign_key: true
      t.integer :user_id, null: false, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
