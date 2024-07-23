extends Area2D

const speed = 48

func _process(delta):
	position.x -= speed * delta
	if (position.x < -160):
		queue_free()

func _on_body_entered(body):
	get_tree().current_scene.get_node("GameManager").addPoint()	
	$Score.play()
