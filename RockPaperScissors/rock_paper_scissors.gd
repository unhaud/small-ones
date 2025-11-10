extends Control

@onready var player_display = $ChoiceDisplay/HBoxContainer/PlayerDisplay
@onready var computer_display = $ChoiceDisplay/HBoxContainer/ComputerDisplay
@onready var result_label = $ResultLabel

var choices = {
	"rock": preload("res://RockPaperScissors/Art/rock.jpg"),
	"scissors": preload("res://RockPaperScissors/Art/scissors.jpg"),
	"paper": preload("res://RockPaperScissors/Art/paper.jpg"),
	"unknown": preload("res://RockPaperScissors/Art/unknown.png")
}

func reset_displays():
	player_display.texture = choices["unknown"]
	computer_display.texture = choices["unknown"]

func _on_rock_button_up() -> void:
	make_choice("rock")

func _on_paper_button_up() -> void:
	make_choice("paper")

func _on_scissors_button_up() -> void:
	make_choice("scissors")

func make_choice(player_choice):
	player_display.texture = choices[player_choice]
	
	var computer_choice = ["rock", "scissors", "paper"][randi() % 3]
	computer_display.texture = choices[computer_choice]
	
	determine_winner(player_choice, computer_choice)

func determine_winner(player, computer):
	if player == computer:
		result_label.text = "Ничья!"
	elif (player == "rock" and computer == "scissors") or \
		 (player == "scissors" and computer == "paper") or \
		 (player == "paper" and computer == "rock"):
		result_label.text = "Вы победили!"
	else:
		result_label.text = "Компьютер победил!"
