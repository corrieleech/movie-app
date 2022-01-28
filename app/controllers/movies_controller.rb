class MoviesController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]
  
  def index
    movies = Movie.where("english = true")
    render json: movies.to_json
  end
  
  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director], 
      english: params[:english])
    movie.save
    if movie.save == false
      render json: {message: "Entry could not be created due to the following error(s): #{movie.errors.full_messages}"}
    else
      render json: movie.to_json
    end
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie.to_json
  end
  
  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    movie.save
    if movie.save == false
      render json: {message: "Updates could not be saved due to the following error(s): #{movie.errors.full_messages}"}
    else
      render json: movie.to_json
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "The movie has been removed from the database."}
  end

end
