extends Control


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Levels/Level1.tscn")


func _on_TextureButton3_pressed():
	get_tree().quit()


func _on_TextureButton2_pressed():
	get_tree().change_scene("res://Levels/About.tscn")
