extends Label

@onready var score_manager = $"../ScoreManager"

func _process(_delta):
	text = "Score: " + str(score_manager.score)
