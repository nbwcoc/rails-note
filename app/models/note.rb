class Note < ApplicationRecord
  validates :identifier, presence: true
end
