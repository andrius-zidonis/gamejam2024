extends CharacterBody2D

@export var speed = 400
@export var player: int
@export var inventory: Inv

func get_input():
	var input_direction = Input.get_vector("%s_left" % player, "%s_right" % player, "%s_up" % player, "%s_down" % player)
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
