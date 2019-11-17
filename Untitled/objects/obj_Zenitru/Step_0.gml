/// @description Insert description here
// You can write your code in this editor
attackElapsed--;
if (atkPeriod==0){

if (attackElapsed%4==0){
ins = instance_create_depth(x,y,depth-1,obj_ZenitsuDrop)
ins.speed=5;
ins.direction = attackElapsed*9;
}

}else if (atkPeriod==1){
	
if (attackElapsed%20==0){
var i=0;
for(i=0;i<20;i++){
ins = instance_create_depth(x,y,depth-1,obj_ZenitsuDrop)
ins.speed=5;
ins.direction = 360/20*i;


}
}

}

if (attackElapsed<0){
attackElapsed=attackCD;
atkPeriod++;
}