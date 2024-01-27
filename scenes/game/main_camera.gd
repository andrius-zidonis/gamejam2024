extends Camera2D

@export var object1: Node
@export var object2: Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.global_position = (object1.global_position + object2.global_position) * 0.5
	
	self.zoom = Vector2(0.75, 0.75)
