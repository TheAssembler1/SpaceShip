extends Node2D

var enemy_speed = 5
var screen_height = 700
var enemydeath_resource = preload("res://Scenes/EnemyDeath.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	
	$Area2D.add_to_group("EnemySpaceShip")
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	position.y += enemy_speed
	
	if position.y > screen_height + 50:
		queue_free()
	
	pass


#checks if we collided with bullet or player
func _on_Area2D_area_entered(area):
	
	if area.is_in_group("Bullet"):
		var enemydeath = enemydeath_resource.instance()
		enemydeath.position.x = position.x
		enemydeath.position.y = position.y
		get_parent().add_child(enemydeath)
		enemydeath.emitting = true
		queue_free()
	
	pass # Replace with function body.
