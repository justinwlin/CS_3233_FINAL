/// @description Insert description here
// You can write your code in this editor
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
	if (keyboard_check(up_key)){
		sprite_index=spr_Tanjirou_DodgeUp;
		y-=dodgeSpeed;
		}
	else if (keyboard_check(down_key)){
		sprite_index=spr_Tanjirou_DodgeDown;
	y+=dodgeSpeed;
	}else{
		x+=image_xscale*dodgeSpeed;
		sprite_index=spr_Tanjirou_Dodge;	
	}

	if (DashElapsed==1){
	sprite_index=spr_Tanjirou_Idle;
	hasCollider=true;
	isInvincible=false;
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


if (keyboard_check(left_key)){
x-=spd;
image_xscale=-1;
}

if (keyboard_check(right_key)){
x+=spd;
image_xscale=1;
}
if (keyboard_check(up_key)){
y-=spd;
}
if (keyboard_check(down_key)){
y+=spd;

}

if (MeleeAttackElapsed<=0 && keyboard_check_pressed(meleeAtk_key)){
	MeleeAttackElapsed=MeleeAttackCD;
	instance_create_depth(x,y,depth-1,obj_TanjirouBlade)
}


if (DashElapsed<=0 && keyboard_check_pressed(dash_key) && !isInvincible){
	DashElapsed=DashCD;
	hasCollider=false;
	isInvincible=true;

//	instance_create_depth(x,y,depth-1,obj_TanjirouBlade)
}

