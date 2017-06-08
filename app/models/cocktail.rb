class Cocktail < ApplicationRecord
  # Relations
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # Validations
  validates :name, presence: true
  validates :name, uniqueness: true
end
