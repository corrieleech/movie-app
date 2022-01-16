Rails.application.routes.draw do
  get "/movies" => "movies#index"
  get "/movies/:id" => "movies#show"
  get "/movies_a_to_z" => "movies#alphabetical"
  get "/newest_5_movies" => "movies#five_recent"
  get "/newest_10_movies" => "movies#next_five_recent"
  get "/eighties_movies" => "movies#eighties"
  # get "/actors/" => "actors#show" #Commented out so that the url paramater path works.
  get "/actors/:id" => "actors#show"
  post "actors/" => "actors#show"
end
