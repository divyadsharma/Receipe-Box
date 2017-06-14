class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :prep_time
      t.integer :cook_time
      t.integer :serving_number
      t.string :upload_image
      t.boolean :public_receipe, default: true
      t.boolean :private_receipe
      t.boolean :terms, default: true, null: false
      t.timestamps
    end
  end
end
