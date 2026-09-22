class_name ScaleCommand
extends Command

var player_mover: PlayerMover
var scale_amount: float

static func create(mover: PlayerMover, amount: float) -> ScaleCommand:
	var cmd = ScaleCommand.new()
	cmd.player_mover = mover
	cmd.scale_amount = amount
	return cmd

func execute():
	player_mover.scale_up(scale_amount)

func undo():
	player_mover.scale_up(-scale_amount)
