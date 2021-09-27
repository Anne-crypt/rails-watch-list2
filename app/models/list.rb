class List < ApplicationRecord
  has_one_attached :photo
  has_many :movies, through: :commentmovies
  has_many :commentmovies, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: true
end
