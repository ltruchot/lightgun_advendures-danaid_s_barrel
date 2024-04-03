extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

# Assure-toi que cette méthode est bien présente dans le script du nœud Label.
func _on_animation_finished(animation_name: String):
	if animation_name == "FadeOut":
		queue_free()
