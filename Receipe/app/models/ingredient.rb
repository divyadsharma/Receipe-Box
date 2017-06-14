class Ingredient < ApplicationRecord
  belongs_to :dish, inverse_of: :ingredients
end
