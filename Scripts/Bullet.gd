extends Node2D

#variables
var bullet_speed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$Area2D.add_to_group("Bullet")
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	#moves the bullet
	move_bullet()
	
	if position.y < 0:
		queue_free()
	
	pass
	
func move_bullet():
	
	position.y -= bullet_speed

#checks if we are colliding with enemies
func _on_Area2D_area_entered(area):
	
	if area.is_in_group("EnemySpaceShip"):
		var label = get_parent().get_node("Label")
		var score = int(label.text)
		score += 1
		label.text = str(score)
		queue_free()
		
	pass # Replace with function body.
