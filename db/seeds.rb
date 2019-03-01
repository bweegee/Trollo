10.times do
  board = Board.create(
  name: Faker::Games::Zelda.game
  )

  10.times do
    list = List.create(
      item: Faker::Games::Zelda.location
    )

    Task.create(
      action:Faker::Games::Zelda.item,
      board_id: board.id,
      list_id: list.id
    )
    end
  end
puts "done"
