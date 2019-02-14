class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient, uniqueness: { scope: :ingredient_id }

  belongs_to :cocktail
  belongs_to :ingredient
end
