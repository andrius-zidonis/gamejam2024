class_name BoxAlgorithm
extends BaseAlgorithm

func generate(width: int, height:int ) -> Map:
	var map = Map.new()
	var mapWidth = width/2
	var mapHeight = height/2
	
	for i in range(-mapWidth, mapWidth):
		for j in range(-mapHeight, mapHeight):
			map.setAt(Vector2i(i, j), Map.MapTypes.GRASS)
	
	return map


