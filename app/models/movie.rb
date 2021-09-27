class Movie < ApplicationRecord
  has_many :lists, through: :commentmovies
  has_many :commentmovies, dependent: :destroy
end
