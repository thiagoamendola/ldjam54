extends Control

var SUITCASE_WIDTH := 6
var SUITCASE_HEIGHT := 5
var SUITCASE_SLOT := preload("res://suitcase_slot.tscn")

var slot_matrix

# Called when the node enters the scene tree for the first time.
func _ready():
	create_suitcase()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func create_suitcase():
	slot_matrix = []
	for i in range(SUITCASE_WIDTH):
		slot_matrix.append([])
		for j in range(SUITCASE_HEIGHT):
			var new_tile := SUITCASE_SLOT.instantiate()
#			new_tile.set_position(new_tile.texture.get_size() * Vector2(i,j))
			new_tile.set_position(new_tile.get_global_rect().size * Vector2(i,j))
			add_child(new_tile)
			slot_matrix[i].append(new_tile)
	pass
