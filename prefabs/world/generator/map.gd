class_name Map

enum MapTypes {
	GRASS = 0,
	SAND = 1,
	WATER = 2,	
}

var mapTypesAtlas = {
	MapTypes.GRASS: Vector2i(1,2),
	MapTypes.SAND: Vector2i(5,2),
	MapTypes.WATER: Vector2i(19,4),
}

var map = {}

func setAt(key: Vector2i, value: MapTypes) -> Map:
	map[key] = value
	return self 

func getAt(key: Vector2i) -> MapTypes:
	return map.get(key)

func values() -> Dictionary:
	return map

func size() -> int: 
	return map.size()

func getAtlasAt(key: Vector2i) -> Vector2i:
	return mapTypesAtlas.get(getAt(key))
