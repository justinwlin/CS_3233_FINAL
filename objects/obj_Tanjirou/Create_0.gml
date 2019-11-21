/// @description Insert description here
// You can write your code in this editor
spd=4;

MeleeAttackCD=15;
MeleeAttackElapsed=0;
DashCD=15;
DashElapsed=0;


//settings

up_key = ord("W")
down_key=ord("S")
left_key=ord("A")
right_key=ord("D")
parry_key=ord("L")

meleeAtk_key=ord("J")
dash_key=ord("K")

dodgeSpeed=15;
currDirection=0;//90,180,270

isInvincible=false;
invincibleElapsed=0;
invincibleCD=30;

hasCollider=true;
bloodTimer=0;
isShakeLeft=false;


x_Direct=0;
y_Direct=0;


isDefenseSucceed=false;
defenseSuceedElapsed=0;
defenseSucceedCD=30;//this is to say, 30 frames invincible

isInCrush=0;

isParrying=false;
parryElapsed=0;
moveElapsed=0;