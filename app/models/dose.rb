class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # Validation
  validates :description, presence: true
  validates :cocktail, :ingredient, presence: true
  validates_uniqueness_of :cocktail, scope: :ingredient
end
