extends KinematicBody2D

# 2020-01-25 acodemia.pl

const MOTION_SPEED = 160
var health = 100
var elixirs = 0
var cash_gold = 0
var cash_silver = 0
var cash_copper = 0

var slyboots = false


func _ready():
	set_physics_process(true)
	#on_scene = true
	pass
	
func _physics_process(delta):
	
	var motion = Vector2()
	var collision = Vector2()
	
	if (Input.is_action_pressed("ui_up")):
		motion += Vector2(0, -1)
	if (Input.is_action_pressed("ui_down")):
		motion += Vector2(0, 1)
	if (Input.is_action_pressed("ui_left")):
		motion += Vector2(-1, 0)
	if (Input.is_action_pressed("ui_right")):
		motion += Vector2(1, 0)
	
	motion = motion.normalized() * MOTION_SPEED * delta
	motion = move_and_collide(motion)
	
	collision = motion
	
	if(health <= 0):
		self.queue_free()	# obiekt ginie...
		
		
	if(motion):
		print("Kolizja...")
		get_node("AnimatedSprite").stop()
	else:
		get_node("AnimatedSprite").play()
		
	
	
func update_health(damage):
	health -= damage
	print(health)
	pass
	
	
func update_item( item ):
	print (self.name + ": znalazłem " + item)
	elixirs = elixirs + 1
	print ("Ilość eliksirów: " + String(elixirs))
	pass
	
func update_cash_gold( item ):
	print (self.name + ": znalazłem " + item)
	cash_gold = cash_gold + 1
	print ("Złoto: " + String(cash_gold))
	pass
	
func update_cash_silver( item ):
	print (self.name + ": znalazłem " + item)
	cash_silver = cash_silver + 1
	print ("Srebro: " + String(cash_silver))
	pass
	
func update_cash_copper( item ):
	print (self.name + ": znalazłem " + item)
	cash_copper = cash_copper + 1
	print ("Miedź: " + String(cash_copper))
	pass
