class ActorsController < ApplicationController
  def show
    actor = Actor.find(params[:id])
    render json: actor
  end
  def show_body_params
    actor = Actor.find(params[:id])
    render json: actor
  end
end
