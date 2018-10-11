class Scenario < ApplicationRecord
  validates :region, :city, :difficulty presence: true
  validates :region, uniqueness: true
end
