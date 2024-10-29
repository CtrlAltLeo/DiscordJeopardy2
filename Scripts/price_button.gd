extends MarginContainer

var price_value = 900

var question_id = 0

signal button_clicked(question_id)

func _ready():
	$CenterContainer/Label.text = "$%d" % price_value


func _on_texture_button_pressed():
	button_clicked.emit(question_id)
	
