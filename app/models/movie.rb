class Movie < ApplicationRecord
  has_many :commentmovies, dependent: :destroy
  has_many :lists, through: :commentmovies

  validates :title, presence: true,  uniqueness: true
  validates :overview, presence: true
end
