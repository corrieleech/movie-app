class Movie < ApplicationRecord
  validates :title, length: { minimum: 2 }
  validates :year, numericality: true, length: { is: 4 }
  validates :director, presence: true
  validates :plot, length: { minimum: 10 }

  
end
