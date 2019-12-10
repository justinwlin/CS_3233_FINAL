/// @description Insert description here
// You can write your code in this editor


isInCrush--;
defenseSuceedElapsed--;
if (defenseSuceedElapsed>0){
	colorFac =( defenseSucceedCD-defenseSuceedElapsed)/defenseSucceedCD;
image_blend = make_color_rgb( colorFac*255,colorFac*255,255);

if (defenseSuceedElapsed==1){
image_blend=c_white;
isDefenseSucceed=false;

}	
}
if (isInCrush<0 && global.TanHP<global.TanMaxHP){
global.TanHP+=0.01;
}

if (isInvincible){
	invincibleElapsed--;
	if (invincibleElapsed>0 && hasCollider){
		image_blend=make_color_rgb(255,105,126)
		bloodTimer++;
		if (bloodTimer>=2){
			bloodTimer=0;
			isShakeLeft=!isShakeLeft;
		}
		if (isShakeLeft){
			x+=5;
		}else{
			x-=5;
		}

	}else{
	image_blend=c_white
	}
	if (invincibleElapsed<0){
	isInvincible=false;
	}

}
DashElapsed--;
MeleeAttackElapsed--;

if (DashElapsed>0){
	if (!place_meeting(x+dodgeSpeed*x_Direct,y+dodgeSpeed*y_Direct,wall)){
	y+=dodgeSpeed* y_Direct;
	x+=dodgeSpeed*x_Direct;
	
	}else{
	DashElapsed=1;
	}
	
	
	if (DashElapsed==1){
	sprite_index=spr_Tanjirou_Idle;
	hasCollider=true;
	isInvincible=false;
	DashElapsed=0;
	}
	return;
}

if (MeleeAttackElapsed>0){
	sprite_index = spr_Tanjirou_Attack;
	if (MeleeAttackElapsed=1){
	sprite_index=spr_Tanjirou_Idle;
	}
	return;

}else{
	
	
if (!isHoldingShield){
	
if (keyboard_check_pressed(left_key)
||keyboard_check_pressed(down_key)
||keyboard_check_pressed(up_key)
||keyboard_check_pressed(right_key)){
	sprite_index = spr_Tanjirou_Walk;
	
}
if (keyboard_check(left_key)
||keyboard_check(down_key)
||keyboard_check(up_key)
||keyboard_check(right_key)){
	
	sprite_index=spr_Tanjirou_Walk;
	
	
}

if (keyboard_check_released(left_key)
||keyboard_check_released(down_key)
||keyboard_check_released(up_key)
||keyboard_check_released(right_key)){
	sprite_index=spr_Tanjirou_Idle;
	
}
}

}
if (keyboard_check(left_key)){
	if (!place_meeting(x-spd,y,wall)){
		x-=spd;
	}
image_xscale=-1;
}

if (keyboard_check(right_key)){
	if (!place_meeting(x+spd,y,wall)){
x+=spd;
	}
image_xscale=1;
}
if (keyboard_check(up_key)){

	if (!place_meeting(x,y-spd,wall)){
y-=spd;
	}

}
if (keyboard_check(down_key)){
	if (!place_meeting(x,y+spd,wall)){
y+=spd;
	}

}
if (keyboard_check(left_key)
||keyboard_check(down_key)
||keyboard_check(up_key)
||keyboard_check(right_key)){
moveElapsed++;
}
if (moveElapsed>5){//react in 5 frame
isHoldingShield=false;
}

if (MeleeAttackElapsed<=0 && keyboard_check_pressed(meleeAtk_key)){
	MeleeAttackElapsed=MeleeAttackCD;
	ins = instance_create_depth(x,y,depth-1,obj_TanjirouBlade)
	if (keyboard_check(up_key)){
	ins.image_angle = 90;
	}
	else if (keyboard_check(down_key)){
		ins.image_angle = 270;

	}
	else {
		ins.image_xscale=image_xscale;
	}
}


if (DashElapsed<=0 && keyboard_check_pressed(dash_key) && !isInvincible){
	DashElapsed=DashCD;
	hasCollider=false;
	isInvincible=true;

x_Direct=0;
y_Direct=0;
	if (keyboard_check(up_key)){
	y_Direct = -1;
	
	sprite_index=spr_Tanjirou_DodgeUp;
		}
	else if (keyboard_check(down_key)){
	y_Direct = 1;
		sprite_index=spr_Tanjirou_DodgeDown;
	}else{
		x_Direct=image_xscale;
		sprite_index=spr_Tanjirou_Dodge;	
	}

}

if (isHoldingShield){
	parryElapsed--;
	if (parryElapsed<0 || keyboard_check_released(parry_key)){
		isHoldingShield=false;
		
		sprite_index=spr_Tanjirou_Idle;
		instance_destroy(obj_Shield);
		
	}

	
	}else{
	
	if (keyboard_check_pressed(parry_key)){
		parryElapsed=100;moveElapsed=0;
		ins = instance_create_depth(x,y,depth-1,obj_Shield)
			if (keyboard_check(up_key)){
			ins.image_angle = 90;
			ins.dir=1;
			}
			else if (keyboard_check(down_key)){
				ins.image_angle = 270;
			ins.dir=3;
			}
			else {
			ins.image_xscale=image_xscale;
			if (image_xscale==1){ins.dir=0;}else if (image_xscale==-1){ins.dir=2;}
			}
		isHoldingShield=true;sprite_index=spr_Tanjirou_Defense;
	}
	
	
}
	
	//x = clamp(x,250,room_width-290)
	//y=clamp(y,140,room_height-90)