class CreateDishCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :dish_categories do |t|
      t.references :dish, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.timestamps
    end
  end
end
