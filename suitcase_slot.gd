extends TextureRect

var occupied := false

#var DRAGGABLE_ITEM = load("res://draggable_item.tscn")

var item

func _get_drag_data(position):
	if item == null:
		return null

	var drag_item = item
	var control = Control.new()
	remove_child(drag_item)
	control.add_child(drag_item)
	drag_item.set_position(-position)
	set_drag_preview(control)
	item = null
	return drag_item

func _can_drop_data(at_position, data):
	return item == null

func _drop_data(at_position, data):
	item = data
	item.get_parent().remove_child(item)
	item.set_anchors_and_offsets_preset(Control.PRESET_CENTER, Control.PRESET_MODE_KEEP_SIZE)
	add_child(item)

