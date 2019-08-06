extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_button_down():
	
	get_tree().change_scene("res://Scenes/MainScene.tscn")
	
	pass # Replace with function body.


func _on_About_button_down():
	
	$Play.visible = false
	$Play.disabled = true
	
	$About.visible = false
	$Play.disabled = true
	
	$HowToPlay.visible = false
	$HowToPlay.disabled = true
	
	$Back.disabled = false
	$Back.visible = true
	
	$AboutText.visible = true
	
	pass # Replace with function body.


func _on_HowToPlay_button_down():
	
	$Play.visible = false
	$Play.disabled = true
		
	$About.visible = false
	$About.disabled = true
	
	$HowToPlay.visible = false
	$HowToPlay.disabled  = true
	
	$Back.disabled = false
	$Back.visible = true
	
	$HowToText.visible = true
	
	pass # Replace with function body.


func _on_Back_button_down():
	$Play.visible = true
	$Play.disabled = false
	
	$About.visible = true
	$About.disabled = false
	
	$HowToPlay.visible = true
	$HowToPlay.disabled  = false
	$Back.visible = false
	$Back.disabled = true
	
	$AboutText.visible = false
	$HowToText.visible = false
	
	pass # Replace with function body.
