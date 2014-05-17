class CreateFoodstalls < ActiveRecord::Migration
  def change
    create_table :foodstalls do |t|
      t.string :food
      t.float :price

      t.timestamps
    end
  end
end
