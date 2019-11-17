/// @description Insert description here
// You can write your code in this editor
instance_destroy(other)
	stunTimer = 0
	myAtkCollider.hasCollider=false;
	sprite_index = spr_Inosuke_Stunned
	switch (dashDir) {
		case 0: 
			image_xscale = -1//imageScale
			break
		case 1:
			image_xscale = 1//imageScale
			break
	}