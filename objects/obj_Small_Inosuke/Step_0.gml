/// @description Insert description here
// You can write your code in this editor

/*
hitRock = collision_rectangle(x-sprite_get_width(obj_Rock)/2,
						   y-sprite_get_height(obj_Rock)/2,
						   x+sprite_get_width(obj_Rock)/2,
						   y+sprite_get_height(obj_Rock)/2,
						   obj_Rock,
						   false,
						   false)
if (hitRock != noone) {
	
}
*/
event_inherited()

rockElapsed--;
if (stunTimer < stunTimeout) {
	stunTimer += 1
	
} else {
	myAtkCollider.hasCollider=true;
	myAtkCollider.mask_index=spr_atk

	if (dashTimer < dashTimeout) {
		switch (dashDir) {
			case 0: 
			
			
			sprite_index = spr_dash
				x += dashSpeed
				image_xscale = -1//imageScale
				break
			case 1:
			
			sprite_index = spr_dash
				x -= dashSpeed
				image_xscale = 1//imageScale
				break
			case 2:
			
			myAtkCollider.mask_index=spr_atkUp
			sprite_index = spr_dashUp
				y-=dashSpeed
				break;
			case 3:
			myAtkCollider.mask_index=spr_atkDown
			sprite_index = spr_dashDown
				y+=dashSpeed
				break;
		}
		dashTimer += 1
		myAtkCollider.isPassive=false;
	} else {
	myAtkCollider.isPassive=true;
		sprite_index= spr_Walk
		switch (dashDir) {
			case 0: 
				x += walkSpeed
				image_xscale = -1//imageScale
				break
			case 1:
				x -= walkSpeed
				image_xscale = 1//imageScale
				break
				case 2:
				y-=walkSpeed
				break;
				case 3:
				y+=walkSpeed
				break;
		}
	
		nextDashTimer += 1
	}

	if (nextDashTimer >= nextDashTimeout) {
		dashTimer = 0
		nextDashTimer = 0
		dashDir=irandom_range(0, 3)
		if (willDestroyRock){
			xDis=abs(obj_Tanjirou.x-x)
			yDis=abs(obj_Tanjirou.y-y)
			if (xDis<200&& yDis<200){
				if ( xDis<yDis){
				if (obj_Tanjirou.x>x){
					dashDir=0;
				}else {dashDir=1;}
				}else{
				if (obj_Tanjirou.y>y){
					dashDir=3;
				}else {
					dashDir=2;
					}
				}
			}else if ( xDis>yDis){
				if (obj_Tanjirou.x>x){
					dashDir=0;
				}else {dashDir=1;}
			}else{
				if (obj_Tanjirou.y>y){
					dashDir=3;
				}else {
					dashDir=2;
					}
				}
		}
	}
}

if (x < 0) {
	dashDir = 0
}

if (x > room_width) {
	dashDir = 1
}
if (y<0){
	dashDir=3;
}
if (y>room_height){
	dashDir=2
}
//if (dashDir==0){dir=0;}
dir=dashDir;
if (dashDir==1){dir=2;}else if (dashDir==2){dir=1;}