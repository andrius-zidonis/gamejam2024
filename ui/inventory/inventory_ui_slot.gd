extends Control

class_name InventorySlot

@export var item_visuals: Sprite2D

func update_visual(texture: Texture2D):
	if !texture:
		item_visuals.visible = false
	else:
		item_visuals.visible = true
		item_visuals.texture = texture
