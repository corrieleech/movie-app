require 'http'

movies = HTTP.get("http://localhost:3000/movies")

index = movies.parse(:json)

index.each do |movie|
  p movie["id"]
  p movie["title"]
  p movie["year"]
  p movie["plot"]
  puts
end
