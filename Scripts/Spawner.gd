extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var bullet_resource = preload("res://Scenes/EnemySpaceShip.tscn")

var timer = 10
var reset_timer = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	timer -= 1
	
	if timer == 0:
		var bullet = bullet_resource.instance()
		var random_x = rand_range(0, 600)
		bullet.position.x = random_x
		bullet.position.y = 0
		get_parent().add_child(bullet)
		timer = reset_timer
	pass
