extends CharacterBody2D

const SlimeRun = 98
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	velocity.x = SlimeRun
	$AnimatedSprite2D.play("Idle")
	
func _physics_process(delta):
	velocity.y += gravity
	
	if is_on_wall():
		if !$AnimatedSprite2D.flip_h:
			velocity.x = SlimeRun
		else:
			velocity.x = -SlimeRun
	
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = false
	elif velocity.x > 0:
		$AnimatedSprite2D.flip_h = true
	
		
		
	move_and_slide()


func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		queue_free()  

