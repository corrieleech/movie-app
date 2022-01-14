class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.to_json
  end
  def show
    movie = Movie.find(params[:id])
    render json: movie.to_json
  end
  def alphabetical
    movies = Movie.order("title")
    render json: movies.to_json
  end
  def five_recent
    movies = Movie.order(year: :desc).limit(5)
    render json: movies.to_json
  end
  def next_five_recent
    movies = Movie.order(year: :desc).offset(5)
    render json: movies.to_json
  end
  def eighties
    movies = Movie.all.select {|movie| movie.year >= 1980 && movie.year < 1990 }
    render json: movies
  end
end
