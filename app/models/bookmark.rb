class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: {
    minimum: 6,
    too_short: 'Comment is too short. Please add more information.'
  }
  validates :movie_id, uniqueness: { scope: :list_id }
end
