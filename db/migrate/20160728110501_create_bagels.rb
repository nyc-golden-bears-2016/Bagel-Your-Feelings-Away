class CreateBagels < ActiveRecord::Migration
  def change
    create_table :bagels do |t|
      t.string :name, null: false

      t.timestamps(null: false)
    end
  end
end
