/// @description Insert description here
// You can write your code in this editor
event_inherited()

dialoging(1,"met")
atkPeriod=0;
atkPeriodCD=50;
atkPeriodElapsed=0;
isBoss=false;
atkCounter=0;

atkElapsed=0;
atkCD=30;
totalCount=10;


walkingElapsed=0;
walkCD=70;
isWalking=false;
walkSpeed=4;
walkDir=random_range(0,3)


spr_Walk=spr_Zenitsu_Walk;
spr_Attack=spr_Zenitsu_Attack

myAtkCollider = instance_create_depth(x,y,depth+1,obj_attacker)
myAtkCollider.mask_index = spr_Zenitsu_Atk_Collider
myAtkCollider.parent = id
