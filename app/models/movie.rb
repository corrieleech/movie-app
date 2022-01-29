class Movie < ApplicationRecord
  validates :title, length: { minimum: 2 }
  validates :year, numericality: true, length: { is: 4 }
  validates :director, presence: true
  validates :plot, length: { minimum: 10 }

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  def genre_names
    self.genres.map {|genre| genre.name }
  end

end
