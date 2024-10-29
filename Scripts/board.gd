extends Control

var price_button_node = preload("res://Scenes/price_button.tscn")

var question_slide_node = preload("res://Scenes/question_slide.tscn")

@onready var question_grid = $CenterContainer/VBoxContainer/MarginContainer/VBoxContainer/CenterContainer/questions

var questions = ["I am question 0", "I am questoin 1", "res://UI/icon.svg"]

func _ready():
	board_setup()


func _process(delta):
	pass


func board_setup():
	
	var count = 0;
	
	for i in range(5):
		for j in range(6):
			
			var new_price_button = price_button_node.instantiate()
			new_price_button.price_value = (i+1) * 200
			new_price_button.question_id = count
			count+=1
			
			new_price_button.button_clicked.connect(question_clicked)
			
			question_grid.add_child(new_price_button)
			
			
			
func question_clicked(question_id):
	print(question_id)
	var question = question_slide_node.instantiate()
	question.question_data = questions[question_id]
	add_child(question)
	
	
	
