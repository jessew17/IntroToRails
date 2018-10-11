class Dragon < ApplicationRecord
  validates :type, presence: true, uniqueness: true
end
