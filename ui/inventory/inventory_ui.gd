extends Control

enum InventoryTypes {
	PLAYER_INVENTORY,
	TRADING_INVENTORY
}

@export var player: Player
@export var type: InventoryTypes

@onready var item_grid = $ScrollContainer/HFlowContainer
var Slot = preload("res://ui/inventory/inventory_ui_slot.tscn")

var inventory: Inventory

func _ready():
	match type:
		InventoryTypes.PLAYER_INVENTORY:
			inventory = player.inventory
		InventoryTypes.TRADING_INVENTORY:
			inventory = player.tradingInventory

	populate_item_grid()

func populate_item_grid() -> void:
	for child in item_grid.get_children():
		child.queue_free()

	for item in inventory.items:
		var slot = Slot.instantiate()
		slot.update_visual(item.texture)
		item_grid.add_child(slot)
