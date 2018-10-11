class Stat < ApplicationRecord
  has_many :dragons
  has_many :creatures
  has_many :characters
  validates :type, :hp, :attack, :defense, presence: true
  validates :type, uniqueness: true
end
