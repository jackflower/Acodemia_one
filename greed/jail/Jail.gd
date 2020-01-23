extends Node2D

# 2020-01-25 acodemia.pl

#func _ready():
#	#set_physics_process(true)
#	#set_process(true)
#	pass
	
	
#func _physics_process(delta):
#	pass
	
	
#func _process(delta):
#	pass
	
func _on_Timer_timeout():
	print ("Koniec kary...")
	$Stone_1.visible = false
	$Stone_1/CollisionPolygon2D.disabled = true
	pass 

