class Character < ApplicationRecord
  belongs_to :stat
  validates :race, :name, presence: true
  validates :name, uniqueness: true
end
