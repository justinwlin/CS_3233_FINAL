/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (isDashing){
	
	if (dir==0){image_xscale=-1;}
	else if (dir==2){image_xscale=1;}
direction=dir*90;speed=40;
sprite_index=spr_Zenitsu_Boss_Dash;
dashElapsed--;
if (dashElapsed<0){
	
	idleElapsed=idleCD;
	isDashing=false;
}
myAtkCollider.isPassive=false;
}else{
myAtkCollider.isPassive=true;

sprite_index=spr_Zenitsu_Boss_Idle
speed=0;

idleElapsed--;
if (idleElapsed<0){
dashElapsed=dashCD;

if (obj_Tanjirou.x>x)
{dir=0;
	
	}else{dir=2;

		}
if(obj_Tanjirou.y<y){
dir=1;
}else{dir=3;}
dir=getDirection1(x,y)

isDashing=true;
}


}

