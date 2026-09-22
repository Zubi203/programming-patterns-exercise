extends Sprite2D

var off_sprite = preload("res://Sprites/tile_0031.png")
var on_sprite = preload("res://Sprites/tile_0032.png")

func turn_on ():
	texture = on_sprite

func turn_off ():
	texture = off_sprite
