class_name MoveCommand
extends Command

var player_mover: PlayerMover
var move_dir: Vector2

static func create(mover: PlayerMover, dir: Vector2) -> MoveCommand:
	var cmd = MoveCommand.new()
	cmd.player_mover = mover
	cmd.move_dir = dir
	return cmd

func execute():
	player_mover.move(move_dir)

func undo():
	player_mover.move(-move_dir)
