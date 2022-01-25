class Actor < ApplicationRecord
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, numericality: { greater_than: 13 }
  validates :gender, presence: true

  belongs_to :movie

  def associated_movie_plot
    movie = Movie.find(self.movie_id)
    movie.plot
  end
  
  def associated_movie_title
    movie = Movie.find(self.movie_id)
    movie.title
  end

end
