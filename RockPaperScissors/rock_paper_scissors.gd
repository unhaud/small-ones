extends Control

func _on_rock_button_up() -> void:
	make_choice("rock")

func _on_paper_button_up() -> void:
	make_choice("paper")

func _on_scissors_button_up() -> void:
	make_choice("scissors")
