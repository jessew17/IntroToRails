class Stat < ApplicationRecord
  has_many :dragon
  has_many :creature
  has_many :character
  validates :species, :hp, :attack, :armor, presence: true
  validates :species, uniqueness: true
end
