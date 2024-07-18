extends Area2D

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene("res://scenes/Nivel2.tscn")  
