extends Control

# is the list displayed? (retrieved var)
var pos_neg = Game.displaywhich
var displaywhich = 'none'

# links (bt - positive)
@onready var swiftness = $positive/buttons/bt_swiftness
@onready var slowness = $negative/buttons/bt_slowness

# links (result)
@onready var rlt_swift = $"../McBook/Result/positive/rlt_swiftness"
@onready var rlt_slow = $"../McBook/Result/negative/rlt_slowness"

# display
func _process(delta):
	if displaywhich == 'swiftness' and pos_neg == 'positive':
		rlt_swift.visible = true
	elif displaywhich == 'slowness':
		rlt_slow.visible = true

# swiftness
func _on_bt_swiftness_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			displaywhich = 'swiftness'
