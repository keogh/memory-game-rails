# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

NUM_PAIRS = 8

game = Game.create(num_players: 2, num_pairs: NUM_PAIRS)

player1 = Player.create(name: 'Player 1', game: game)
player2 = Player.create(name: 'Player 2', game: game)

countries = %w[
  Yemen Argentina Azerbaijan Brazil Canada Chile Cuba Ethiopia France Germany 
  Ghana Hungary Jamaica Japan Mexico Palestine Somalia Sweden China Philippines 
  United_Kingdom United_States Uruguay
]

countries.shuffle.slice(0, 8).each do |country_name|
  Card.create(
    game: game,
    name: country_name.split('_').join(' '),
    image_name: "Flag_of_#{country_name}.svg"
  )
  Card.create(
    game: game,
    name: country_name.split('_').join(' '),
    image_name: "Flag_of_#{country_name}.svg"
  )
end
