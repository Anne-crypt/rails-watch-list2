class List < ApplicationRecord
  has_many :movies, through: :commentmovies
  has_many :commentmovies, dependent: :destroy
end
