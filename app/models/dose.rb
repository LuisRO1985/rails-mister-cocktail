class Dose < ApplicationRecord
  # Relations
  belongs_to :cocktail
  belongs_to :ingredient
  # Validations
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end
