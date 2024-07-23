extends Node

var score = 0
var pipe = preload("res://Scenes/pipes.tscn")
@onready var label = $Label
@onready var timer = $Timer

func _on_timer_timeout():
	makePipe()
	
func makePipe():
	var instance = pipe.instantiate()
	instance.position  = Vector2(160, randi_range(-36, 36))
	add_child(instance)

func addPoint():
	score += 1
	label.text = "Score: %s" % [str(score)]


