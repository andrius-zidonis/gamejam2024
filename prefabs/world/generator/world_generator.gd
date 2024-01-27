extends Node

@export var width: int = 128
@export var height: int = 128
@export var algorithm: Node
@export var tileMap: TileMap

func _ready() -> void: 
	var map: Map = algorithm.generate(width, height)
	tileMap.clear()
	
	for position in map.values():
		tileMap.set_cell(0, position, 0, map.getAtlasAt(position))
		
	

