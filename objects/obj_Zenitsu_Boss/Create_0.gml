/// @description Insert description here
// You can write your code in this editor
event_inherited()
dialoging(1,"boss")

myAtkCollider=instance_create_depth(x,y,depth+1,obj_attacker)
myAtkCollider.mask_index = spr_Zenitsu_Boss_DashCollider//boss's attcker
myAtkCollider.parent=id;

dashElapsed=0;
dashCD=6;
dashDir=0;
isDashing=false;
idleElapsed=0;
idleCD=150;
dir=0;
hp=20;
maxHP=hp;