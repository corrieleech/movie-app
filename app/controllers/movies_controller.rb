class MoviesController < ApplicationController
  def index
    movies = Movie.all
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
    render json: movie.to_json
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
    render json: movie.to_json
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "The movie has been removed from the database."}
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
