class Dragon < ApplicationRecord
  belongs_to :stat
  validates :name, presence: true, uniqueness: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end 
end
