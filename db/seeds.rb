# Actor.create(first_name: "", last_name: "", known_for: "")

# actor = Actor.new({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
# actor.save
# 10.times do
#   actor = Actor.create(first_name: FFaker::Name.first_name, last_name: FFaker::Name.last_name, known_for: FFaker::Movie.title)
# end

movie = Movie.create(title: "Airplane!", year: 1980, plot: "A man afraid to fly must ensure that a plane lands safely after the pilots become sick.")
movie = Movie.create(title: "Spaceballs", year: 1987, plot: "A star-pilot for hire and his trusty sidekick must come to the rescue of a princess and save Planet Druidia from the clutches of the evil Spaceballs.")
movie = Movie.create(title: "Drop Dead Gorgeous", year: 1999, plot: "A small-town beauty pageant turns deadly as it becomes clear that someone will go to any lengths to win.")
movie = Movie.create(title: "Dracula: Dead and Loving It", year: 1995, plot: "Mel Brooks ' parody of the classic vampire story and its famous film adaptations.")
movie = Movie.create(title: "Monty Python and the Holy Grail", year: 1975, plot: "King Arthur and his Knights of the Round Table embark on a surreal, low-budget search for the Holy Grail, encountering many, very silly obstacles.")
movie = Movie.create(title: "Popstar: Never Stop Never Stopping", year: 2016, plot: "When it becomes clear that his solo album is a failure, a former boy band member does everything in his power to maintain his celebrity status.")
movie = Movie.create(title: "Booksmart", year: 2019, plot: "On the eve of their high school graduation, two academic superstars and best friends realize they should have worked less and played more. Determined not to fall short of their peers, the girls try to cram four years of fun into one night.")
movie = Movie.create(title: "Bridesmaids", year: 2011, plot: "Competition between the maid of honor and a bridesmaid, over who is the bride's best friend, threatens to upend the life of an out-of-work pastry chef.")