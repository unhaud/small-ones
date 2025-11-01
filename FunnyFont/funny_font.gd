extends Control

@onready var label = $Label

func _on_back_to_menu_button_up() -> void:
	print ("tell me")
	var BackToMenu = load("res://LevelSelector/LevelSelector.tscn")
	get_tree().change_scene_to_packed(BackToMenu)


func _on_color_ShowColorPicker() -> void:
	var color_picker = ColorPicker.new()
	var popup = Popup.new()
	popup.add_child(color_picker)
	add_child(popup)
	
	color_picker.color_changed.connect(_on_color_changed)
	popup.popup_hide.connect(popup.queue_free)
	
	# Получаем позицию кнопки на экране
	var button_rect = $VBoxContainer/HBoxContainer/Color.get_global_rect()
	# Открываем палитру под кнопкой
	popup.popup(Rect2(button_rect.position + Vector2(0, button_rect.size.y), Vector2(300, 400)))

func _on_color_changed(color):
	label.add_theme_color_override("font_color", color)


func _on_text_swap_button_up() -> void:
	label.text = "TEXT SWAPPED"


func _on_increase_button_up() -> void:
	var current_size = label.get_theme_font_size("font_size")
	label.add_theme_font_size_override("font_size", current_size + 2)


func _on_decrease_button_up() -> void:
	var current_size = label.get_theme_font_size("font_size")
	label.add_theme_font_size_override("font_size", current_size - 2)


func _on_reset_button_up() -> void:
	get_tree().reload_current_scene()
