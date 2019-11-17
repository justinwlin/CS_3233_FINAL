/// @description Insert description here
// You can write your code in this editor
if (isInvincible){return;}

hp-=other.atk;
isInvincible=true;
invincibleElapsed=invincibleCD;
isShowingHealthBar=true;
showingHealthElapsed=showingHealthCD;

if (hp<=0){
	instance_destroy(myAtkCollider)
instance_destroy()
}