class List < ApplicationRecord
  has_one_attached :photo
  has_many :commentmovies, dependent: :destroy
  has_many :movies, through: :commentmovies

  validates :name, presence: true
  validates :name, uniqueness: true
end
