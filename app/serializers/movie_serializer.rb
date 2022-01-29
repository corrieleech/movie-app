class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :plot, :director, :english

  has_many :actors
  has_many :genres
end
