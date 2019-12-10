/// @description Insert description here
// You can write your code in this editor
elapsed++;
if (elapsed>interval){
elapsed=0;
currCG++;
if (currCG==2){
sprite_index=Ending2CG2;

}else if (currCG==3){

sprite_index=Ending2CG3;


}else if (currCG==4){
	instance_create_depth(0,0,depth-1,obj_WhiteScreen)
sprite_index=Ending2CG4;

//show btn
isShowingEnd=true;
}

}

if (isShowingEnd){
if (keyboard_check_pressed(ord("R"))){
game_restart()
}
}