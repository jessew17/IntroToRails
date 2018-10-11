class Character < ApplicationRecord
  validates :race, :name, presence: true
  validates :name, uniqueness: true
end
