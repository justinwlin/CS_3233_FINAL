//Ending 1

elapsed++;
if (currCG==3 &&elapsed>10){
sprite_index=spr_E1CG3

}
if (elapsed>interval){
elapsed=0;
currCG++;
if (currCG==2){
sprite_index=spr_E1CG2;

}else if (currCG==3){
instance_create_depth(800,450,depth-1,obj_Explode)
}else if (currCG==4){

//show btn
isShowingEnd=true;
}

}

if (isShowingEnd){
if (keyboard_check_pressed(ord("R"))){
game_restart()
}
}