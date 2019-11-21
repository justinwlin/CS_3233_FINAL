/// @description Insert description here
// You can write your code in this editor

// shortcut to end the game
if (keyboard_check_pressed(ord("Q"))) {
	game_end()
}

if (global.InosukeLove>=25 && !hasBossOccured){
hasBossOccured=true;
instance_create_depth(500, 300, 0, obj_Big_Inosuke)
}
if (global.ZenitsuLove>=25 && !hasBossOccured){
hasBossOccured=true;
//go back?
instance_create_depth(500, 300, 0, obj_Zenitsu_Boss)
}



if (!instance_exists(obj_Small_Inosuke)){

//room_goto(Ending1);
}
if (!instance_exists(obj_Zenitsu)){

//room_goto(Ending2);
}

if (global.TanHP<=0){
room_goto(Ending4)
}