10.times do
  board = Board.create(
  name: Faker::Games::Zelda.game
  )

  10.times do
    list = List.create(
      name: Faker::Games::Zelda.location,
      board_id: board.id
    )

    Task.create(
      todo: Faker::Games::Zelda.character,
      list_id: list.id,
      board_id: board.id
    )
    end
  end

puts "#{Task.count} Tasks created"
puts "#{List.count} List created"
puts "#{Board.count} Boards created"
puts "done"
