extends Control

var item

func _ready():
	item = $DraggableItem
	pass # Replace with function body.


func _process(delta):
	pass

# Could be a generic draggable class
func _get_drag_data(position):
	if item == null:
		return null

	var drag_item = item
	remove_child(drag_item)
	var control = Control.new()
	control.add_child(drag_item)
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


