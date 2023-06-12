extends Control

# is the list displayed?
var displaywhich = 'none'

# links (bt - positive)
@onready var swiftness = $buttons/bt_swiftness

# links (result)
@onready var rlt_swift = $"../../McBook/Result/rlt_swiftness"

# display
func _process(delta):
	if displaywhich == 'swiftness':
		rlt_swift.visible = true
		
	elif displaywhich == 'swiftness':
	

# swiftness
func _on_bt_swiftness_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			displaywhich = 'swiftness'
