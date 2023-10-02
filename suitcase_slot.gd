extends TextureRect

var occupied := false

var DRAGGABLE_ITEM = load("res://draggable_item.tscn")

func _get_drag_data(position):
	var item = DRAGGABLE_ITEM.instantiate()
	var control = Control.new()
	control.add_child(item)
	item.set_position(-position)
	print(position)
	set_drag_preview(control)
	return item

func _can_drop_data(at_position, data):
	# Check if you're under a 
	return true

func _drop_data(at_position, data):
	var item = DRAGGABLE_ITEM.instantiate()
	add_child(item)

