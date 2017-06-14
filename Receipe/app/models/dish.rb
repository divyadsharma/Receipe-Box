class Dish < ApplicationRecord
  has_many :dish_categories, dependent: :destroy
  has_many :categories, through: :dish_categories
  has_many :ingredients, inverse_of: :dish
  has_many :directions,  inverse_of: :dish
  accepts_nested_attributes_for :ingredients, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :directions, :reject_if => :all_blank, :allow_destroy => true
  mount_uploader :upload_image, AvatarUploader
  belongs_to :user
  validates :title, :description, :prep_time, :cook_time,
            :serving_number, :upload_image, presence: true
  validates_numericality_of :prep_time, :cook_time, :serving_number
end
