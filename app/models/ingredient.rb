class Ingredient < ApplicationRecord
  has_many :doses
  # belongs_to :cocktail
  validates :name, uniqueness: true, presence: true
end
