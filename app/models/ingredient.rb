class Ingredient < ApplicationRecord
  # Filters
  before_destroy :check_child
  # Relations
  has_many :doses , dependent: :destroy
  has_many :cocktails, through: :doses

  # Validations
  validates :name, presence: true
  validates :name, uniqueness: true

  private
  def check_child
    raise ActiveRecord::InvalidForeignKey unless  self.doses.count == 0
  end
end
