class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true, allow_nil: false
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo
end
