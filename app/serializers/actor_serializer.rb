class ActorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :known_for, :gender, :age, :associated_movie_title, :associated_movie_plot

end
