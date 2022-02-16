class MoviesController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]
  
  def index
    movies = Movie.where("english = true")
    render json: movies
  end
  
  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director], 
      english: params[:english])
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: 422
    end
  end

  def show
    movie = Movie.find(params[:id])
    render json: {movie: movie, genres: movie.genre_names}
  end
  
  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    movie.save
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: 422
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "The movie has been removed from the database."}
  end

end
