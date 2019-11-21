//defensing sprite animate

if (hasAdded)return;
obj_Tanjirou.isParrying=true;

if (elapsed<=5 && !other.isPassive){
	if (abs(other.parent.dir-dir) ==2){
	global.TanHP+=5;
	obj_Tanjirou.defenseSuceedElapsed=obj_Tanjirou.defenseSucceedCD;
	hasAdded=true;
	obj_Tanjirou.isDefenseSucceed=true;

}
//can only have effect when the direction is right into each other;
//let's say, right and left.

//must be inosuke

}