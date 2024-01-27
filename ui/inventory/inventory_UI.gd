extends Control

@onready var slots: Array = $NinePatchRect/GridContainer.get_children()
@export var player: Player

enum InventoryTypes {
	PLAYER_INVENTORY,
	TRADING_INVENTORY
}

@export var type: InventoryTypes

var inventory: Inventory

func _ready():
	match type:
		InventoryTypes.PLAYER_INVENTORY:
			inventory = player.inventory
		InventoryTypes.TRADING_INVENTORY:
			inventory = player.tradingInventory

	update_slots()

func update_slots():
	for i in range(min(inventory.items.size(), slots.size())):
		slots[i].update(inventory.items[i])
