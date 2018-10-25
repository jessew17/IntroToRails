class Scenario < ApplicationRecord
  validates :region, :city, :difficulty, presence: true
  validates :region, uniqueness: true

  def self.search(search)
    where("region LIKE ? OR city LIKE ?", "%#{search}%", "%#{search}%")
  end 
end
