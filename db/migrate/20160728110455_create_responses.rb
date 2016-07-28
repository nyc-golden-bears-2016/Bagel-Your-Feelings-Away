class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :answer, null: false
      t.integer :user_id, null: false

      t.timestamps(null: false)
    end
  end
end
