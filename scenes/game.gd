extends Control

@onready var bt_clicking = $audio/audio2d_clicking

# exit
func _on_bt_exit_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			# bt sound effect
			bt_clicking.play()
			get_tree().quit()
