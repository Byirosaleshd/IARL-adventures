extends Area2D

func _ready():
	$AnimationPlayer.play("coin")





func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if body.is_in_group("player"):
		Global.contador += 1
		print(Global.contador)
		queue_free()
