extends Control

func _on_PlayButton_pressed():
	get_tree().change_scene("res://BaseWorld2.tscn")
	


func _on_QuitButton_pressed():
	get_tree().quit()


func _on_OptionsButton_pressed():
	get_node("NoOptions").popup()


func _on_ComplainButton_pressed():
	get_node("NothingHappened").popup()
	
