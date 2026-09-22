extends Node

var undo_stack: Array[Command] = []
var redo_stack: Array[Command] = []

@onready var player: PlayerMover = $"../Player"

func _process(_delta: float) -> void:
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if direction:
		execute_command(MoveCommand.create(player, direction))
	if Input.is_action_just_pressed("ui_cancel"):
		execute_command(ScaleCommand.create(player, 0.2))
	
func execute_command(cmd: Command):
	cmd.execute()
	undo_stack.push_front(cmd)
	redo_stack.clear()

func undo_command():
	if undo_stack.is_empty():
		return
	var cmd = undo_stack.pop_front()
	redo_stack.push_front(cmd)
	cmd.undo()

func redo_command():
	if redo_stack.is_empty():
		return
	var cmd = redo_stack.pop_front()
	undo_stack.push_front(cmd)
	cmd.execute()


func _on_undo_button_pressed() -> void:
	undo_command()


func _on_redo_button_pressed() -> void:
	redo_command()
