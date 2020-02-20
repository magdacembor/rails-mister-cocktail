class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses
  has_many :cocktails, through: :doses
  # before_destroy :check_dose_presence

  # def check_dose_presence
  #   return false if ingredient.dose.blank?
  # end
end
