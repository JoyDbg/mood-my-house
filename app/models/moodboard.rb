class Moodboard < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :inspirations, through: :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end
