class Direction < ApplicationRecord
  belongs_to :dish, inverse_of: :directions
end
