extends CanvasLayer

func _process(_delta):
	$Label.text = str(Global.contador)
