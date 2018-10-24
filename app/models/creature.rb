class Creature < ApplicationRecord
  belongs_to :stat
  validates :name, presence: true, uniqueness: true
end
