class_name PerlinNoiseAlgorithm
extends BaseAlgorithm


@export var seed: String = "godot"
@export_range(-1, 1, 0.05) var water: float = -0.6
@export_range(-1, 1, 0.05) var sand: float = -0.4
@export_range(-1, 1, 0.05) var grass: float = 0.7

@export_range(-1, 1, 0.5) var step: float = 0.05

var softnoise: SoftNoise

func generate(width: int, height: int) -> Map:
	var map = Map.new()
	var mapWidth = width/2
	var mapHeight = height/2
	var algSeed = hash(seed)
	
	softnoise = SoftNoise.new()
	
	for i in range(-mapWidth, mapWidth):
		for j in range(-mapHeight, mapHeight):			
			var value = softnoise.openSimplex2D(i * step, j * step);		
			if value < water: 
				map.setAt(Vector2i(i, j), Map.MapTypes.WATER)
			elif value > water && value < sand:
				map.setAt(Vector2i(i, j), Map.MapTypes.SAND)
			else:
				map.setAt(Vector2i(i, j), Map.MapTypes.GRASS)
			
	return map
