extends Control




func _on_button_button_up_font() -> void:
	var ButtonFont = load("res://FunnyFont/FunnyFont.tscn")
	get_tree().change_scene_to_packed(ButtonFont)

func _on_rock_paper_scissors_button_up() -> void:
	var ButtonRockPaperScissors = load("res://RockPaperScissors/RockPaperScissors.tscn")
	get_tree().change_scene_to_packed(ButtonRockPaperScissors)


func _on_placeholder_button_up() -> void:
	var PalceHolder =  load("res://placeholder.tscn")
	get_tree().change_scene_to_packed(PalceHolder)
