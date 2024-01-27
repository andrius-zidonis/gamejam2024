extends CharacterBody2D

class_name Player

@export var speed = 400
@export var player: int
@export var inventory: Inventory
@export var tradingInventory: Inventory

var emptyItem = preload("res://ui/inventory/slots/empty_slot.tres")
var sampleItem = preload("res://ui/inventory/items/sample_item.tres")

func _ready():
	for i in range(0, 20):
		if i % 5 == 0:
			inventory.items.append(sampleItem)
		inventory.items.append(emptyItem)
		tradingInventory.items.append(emptyItem)

func get_input():
	var input_direction = Input.get_vector("%s_left" % player, "%s_right" % player, "%s_up" % player, "%s_down" % player)
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()
