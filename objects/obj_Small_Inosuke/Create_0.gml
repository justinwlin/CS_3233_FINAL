/// @description Insert description here
// You can write your code in this editor
event_inherited()
willDestroyRock=false;
rockElapsed=0;


spr_Walk = spr_Inosuke_Walk;
spr_dash = spr_Inosuke_Dash;
spr_dashUp=spr_Inosuke_DashUp
spr_dashDown = spr_Inosuke_DashDown;
spr_stunned = spr_Inosuke_Stunned
spr_atk=spr_Inosuke_Dash_Atk_Hori;
spr_atkUp=spr_Inosuke_Dash_Atk_Up
spr_atkDown=spr_Inosuke_Dash_Atk_Down



start = [0, room_width]
startY = [0, room_height]

randomStart = irandom_range(0, 3)
// 0: right; 1: left; 2:up;3:down
dashDir = randomStart
x = start[0]
y = random_range(0, room_height)

if (randomStart == 1) {
//	dashDir = 1
	x = start[1]
}else if (randomStart==2){

x = random_range(0,room_width)
y = startY[0]
}else if (randomStart==3){
x = random_range(0,room_width)
y = startY[1]

}
dashSpeed = random_range(4,6)
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
dir=0;