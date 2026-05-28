extends Node

enum State { MENU, PREPARING, PLAYING, PAUSED, GAME_OVER }

var state: State = State.MENU
var gold: int = 100

func start_game() -> void:
	pass

func pause() -> void:
	pass

func resume() -> void:
	pass

func end_game(victory: bool) -> void:
	pass

func add_gold(amount: int) -> void:
	pass

func spend_gold(amount: int) -> bool:
	return false
