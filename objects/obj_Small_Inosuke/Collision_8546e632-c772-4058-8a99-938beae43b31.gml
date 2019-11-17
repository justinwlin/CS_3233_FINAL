/// @description Insert description here
// You can write your code in this editor

if (rockElapsed>0){return;}
if (willDestroyRock){
	instance_destroy(other)
}


rockElapsed=stunTimeout+50;
//should only knock when colliding with attacker?
	stunTimer = 0
	myAtkCollider.hasCollider=false;
	sprite_index = spr_stunned
	switch (dashDir) {
		case 0: 
			image_xscale = -1//imageScale
			dashDir=1;
			break
		case 1:
			image_xscale = 1//imageScale
			break
			dashDir=0
			case 2:
			dashDir=3;
			break;case 3:dashDir=2;break;
	}