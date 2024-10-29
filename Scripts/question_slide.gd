extends Control

var question_data = "res://UI/icon.svg"


func _ready():
	if (question_data.substr(0,6) == "res://" ):
		$Panel/CenterContainer/AspectRatioContainer/TextureRect.texture = load(question_data)
		$Panel/CenterContainer/AspectRatioContainer/TextureRect.show()
		print("IMAGE")
	else:
		$Panel/CenterContainer/AspectRatioContainer/Label.text = question_data
		$Panel/CenterContainer/AspectRatioContainer/Label.show()
		print("Tedt")
	
# If Spacebar is Pressed, dismiss
