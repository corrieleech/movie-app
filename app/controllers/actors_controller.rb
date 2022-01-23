class ActorsController < ApplicationController

  def index
    actors = Actor.all.order(age: :desc)
    render json: actors.as_json
  end

  def create
    actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      age: params[:age],
      gender: params[:gender]
    )
    actor.save
    if actor.save == false
      render json: {message: "Entry could not be created due to the following error(s): #{actor.errors.full_messages}"}
    else
      render json: actor.to_json
    end
  end

  def show
    actor = Actor.find(params[:id])
    render json: actor.as_json
  end
  
  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.age = params[:age] || actor.age
    actor.gender = params[:gender] || actor.gender
    actor.save
    if actor.save == false
      render json: {message: "Actor failed to update due to the following error(s): #{actor.errors.full_messages}"}
    else
      render json: actor.to_json
    end
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "The actor has been removed from the database."}
  end

end
