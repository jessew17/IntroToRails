class Creature < ApplicationRecord
  validates :type, presence: true, uniqueness: true
end
