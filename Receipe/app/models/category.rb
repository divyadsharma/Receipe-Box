class Category < ApplicationRecord
  has_many :dish_categories, dependent: :destroy
  has_many :dishes, through: :dish_categories
end
