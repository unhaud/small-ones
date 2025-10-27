extends Control

func _on_back_to_menu_button_up() -> void:
	var BackToMenu = load("res://LevelSelector/LevelSelector.tscn")
	get_tree().change_scene_to_packed(BackToMenu)
