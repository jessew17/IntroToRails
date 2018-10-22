class Stat < ApplicationRecord
  has_many :dragons
  has_many :creatures
  has_many :characters
  validates :species, :hp, :attack, :defense, presence: true
  validates :species, uniqueness: true
end
