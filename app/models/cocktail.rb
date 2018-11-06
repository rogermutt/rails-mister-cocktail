class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  validates :difficulty, inclusion: { in: %w[Easy Medium Hard] }
  mount_uploader :photo, PhotoUploader
end
