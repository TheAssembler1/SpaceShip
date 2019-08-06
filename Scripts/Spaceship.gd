extends Node2D

#keypress booleans
var shoot = false
var left = false
var right = false

#ship variables
var from_ship = 5
var ship_speed = 6
var screen_width = 600
var ship_width = 26

var bullet_resource = preload("res://Scenes/Bullet.tscn")

func _ready():

	$Area2D.add_to_group("Spaceship")

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	#gets the input
	input()

	pass

func input():

	#sets key presses
	shoot = Input.is_action_just_pressed("ui_select")
	right = Input.is_action_pressed("ui_right")
	left = Input.is_action_pressed("ui_left")

	if right && position.x < screen_width - ship_width:
		position.x += ship_speed
	elif left && position.x > 0 + ship_width:
		position.x -= ship_speed

	if shoot:
		var bullet = bullet_resource.instance()
		bullet.position.x = position.x
		bullet.position.y = position.y - from_ship
		get_parent().add_child(bullet)


func _on_Area2D_area_shape_entered(area_id, area, area_shape, self_shape):
	if area.is_in_group("EnemySpaceShip"):
		get_tree().change_scene("res://Scenes/TitleScene.tscn")
	pass # Replace with function body.
