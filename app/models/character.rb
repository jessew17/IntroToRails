class Character < ApplicationRecord
  belongs_to :stat
  validates :race, :name, presence: true
  validates :name, uniqueness: true

  def self.search(search)
    where("name LIKE ? OR race LIKE ?", "%#{search}%", "%#{search}%")
  end 
end
