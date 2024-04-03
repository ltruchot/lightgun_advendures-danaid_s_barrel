extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	 # Assurez-vous que le chemin correspond à l'emplacement de votre image dans le projet
	var mon_curseur = preload("res://resources/aim_blue.png");
	# Définir l'image comme curseur avec le type par défaut
	Input.set_custom_mouse_cursor(mon_curseur)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
