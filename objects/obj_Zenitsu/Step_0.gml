/// @description Insert description here
// You can write your code in this editor
event_inherited()


walkingElapsed--;
if (walkingElapsed<0){
walkingElapsed=walkCD;
isWalking=!isWalking;
atkPeriod++;
if (!isBoss){
if (atkPeriod>3){atkPeriod=-2;}
}

if (isWalking){

	
	speed=walkSpeed;
walkDir=irandom_range(0,3)	


switch (walkDir){
	case 0:	
	
	image_xscale=-1;
	break;
	case 1:
	break;
	case 2:
	image_xscale=1;
	break;
	case 3:
	break;
	}
}

}


if (isWalking){
	direction = walkDir*90;
	sprite_index=spr_Walk
	if (x<0){
	walkDir=0;
	image_xscale=-1;
	}else if (x>room_width){
		walkDir=2;
		image_xscale=1;
		}
	if (y<0){
	walkDir=3;
	}else if (y>room_height){
		walkDir=1;}

}else{
/*if (!isBoss){
atkPeriodElapsed--;
if (atkPeriodElapsed<0){
atkPeriodElapsed = atkPeriodCD;
atkPeriod++;

}
*/
	
	
	sprite_index=spr_Attack
	speed=0;
	atkElapsed--;
	if (atkElapsed<0){
		if (atkPeriod<2){
		atkCD=30;
		var j=0;
			for(j=0;j<totalCount;j++){
			ins = instance_create_depth(x,y,depth+1,obj_WaterDrop)
			ins.direction = j*360/totalCount;
			}
		}else {//if (atkPeriod==1){
		atkCD=5;
	
			ins = instance_create_depth(x,y,depth+1,obj_WaterDrop)
			ins.direction = atkCounter*360/totalCount;
			atkCounter++;
		}
		atkElapsed=atkCD

	}
}