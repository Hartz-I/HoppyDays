extends Control



func _on_TextureButton_pressed():
	grab_focus()
	get_tree().change_scene("res://Levels/Level1.tscn")
