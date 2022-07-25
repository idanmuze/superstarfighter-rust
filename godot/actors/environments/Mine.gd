extends RigidBody2D
class_name Mine

export var explosion_scene : PackedScene

func start() -> void:
	$AnimationPlayer.play("Idle")

func dive() -> void:
	apply_central_impulse(Vector2.UP*300)

func _on_Mine_body_entered(body):
	detonate()
	
func detonate():
	var explosion = explosion_scene.instance()
	explosion.scale = Vector2(4,4)
	explosion.kilotons = 400
	get_parent().add_child(explosion)
	explosion.global_position = global_position
	queue_free()
