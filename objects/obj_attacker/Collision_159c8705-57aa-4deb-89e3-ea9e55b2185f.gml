/// @description Insert description here
// You can write your code in this editor

if (hasCollider){
if (!other.isInvincible){
	shootHeart(other.x,other.y)
other.isInvincible=true;
other.invincibleElapsed=other.invincibleCD;
global.TanHP-=parent.atk;
}}