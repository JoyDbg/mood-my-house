class Bookmark < ApplicationRecord
  belongs_to :inspiration
  belongs_to :moodboard

  validates :comment, presence: true, length: { minimum: 6 }
  validates_uniqueness_of :inspiration_id, :scope => [:moodboard_id]
end
