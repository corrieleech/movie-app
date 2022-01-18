Rails.application.routes.draw do
  get "/actors" => "actors#index"
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  patch "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"
  
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"
  
  get "/movies_a_to_z" => "movies#alphabetical"
  get "/newest_5_movies" => "movies#five_recent"
  get "/newest_10_movies" => "movies#next_five_recent"
  get "/eighties_movies" => "movies#eighties"
end
