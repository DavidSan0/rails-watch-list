class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates_length_of :comment, :minimum => 6
  validates :list, presence: true
  validates :movie, presence: true
  validates :comment, presence: true

  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list"}

end
