/// @description Insert description here
// You can write your code in this editor
event_inherited()
start = [0, room_width]
randomStart = irandom_range(0, 1)
// 0: right; 1: left
dashDir = 0
x = start[0]
y = random_range(0, room_height)

if (randomStart == 1) {
	dashDir = 1
	x = start[1]
}

dashSpeed = random_range(4, 6)
walkSpeed = random_range(1, 2)

dashTimer = 0
dashTimeout = random_range(60, 80)
nextDashTimer = 0
nextDashTimeout = random_range(20, 50)

stunTimeout = 200
stunTimer = stunTimeout


//imageScale = random_range(0.6, 1)
//image_xscale = imageScale
//image_yscale = imageScale

myAtkCollider = instance_create_depth(x,y,depth+1,obj_attacker)
myAtkCollider.parent = id
