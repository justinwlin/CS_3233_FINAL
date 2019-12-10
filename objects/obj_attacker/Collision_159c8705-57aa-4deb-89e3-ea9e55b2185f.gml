/// @description Insert description here
// You can write your code in this editor

if (hasCollider){
if (!other.isInvincible && !other.isParrying && !other.isDefenseSucceed){
	shootHeart(other.x,other.y)
other.isInvincible=true;

other.invincibleElapsed=other.invincibleCD;
global.TanHP-=parent.atk;
other.isInCrush=100;
/*
if (other.x>x){other.x+=15;}
if (other.x<x){other.x-=15;}
if (other.y>y){other.y+=15;}
if (other.y<y){other.y-=15;}
*/

}}