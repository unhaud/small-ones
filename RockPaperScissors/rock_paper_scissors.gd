extends Control




func _on_button_button_up_BackToMenu() -> void:
	var BackToMenu = load("res://LevelSelector/LevelSelector.tscn")
	get_tree().change_scene_to_packed(BackToMenu)
