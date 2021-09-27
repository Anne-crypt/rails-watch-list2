class Movie < ApplicationRecord
  has_many :lists, through: :commentmovies
  has_many :commentmovies, dependent: :destroy

  validates :title, presence: true,  uniqueness: true
  validates :overview, presence: true
end
