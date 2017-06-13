class Dish < ApplicationRecord
  has_many :dish_categories, dependent: :destroy
  has_many :categories, through: :dish_categories
  mount_uploader :upload_image, AvatarUploader
  belongs_to :user
  validates :title, :description, :direction,
            :ingredients, :prep_time, :cook_time,
            :serving_number, :upload_image, presence: true
  validates_numericality_of :prep_time, :cook_time, :serving_number
end
