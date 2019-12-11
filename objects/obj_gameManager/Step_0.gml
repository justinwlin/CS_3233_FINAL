/// @description Insert description here
// You can write your code in this editor

// shortcut to end the game
if (DialogueManager.isDisplaying){return;}
if (keyboard_check_pressed(ord("Q"))) {
	game_end()
}

if (keyboard_check_pressed(ord("R"))){
	game_restart()
}

if (global.TanHP<=0){
	room_goto(loseRoom)//instance_destroy();
	instance_destroy(obj_Tanjirou);
	instance_destroy(obj_TanjirouUIRenderer);
	instance_destroy()
	return;
}

if (room == startRoom) {
	if (global.InosukeLove>=25 || global.ZenitsuLove>=25) {
		if (global.InosukeLove>=25) {
			global.Boss = obj_Big_Inosuke
		} else {
			global.Boss = obj_Zenitsu_Boss
		}
		room_goto(bossRoom)
		instance_create_depth(0,0,-1000,obj_WhiteScreen)
	}
}

if (room == bossRoom) {
	if (!bossCreated) {
		instance_create_depth(500, 300, 0, global.Boss)
		bossCreated = true
		
		if (global.Boss==obj_Big_Inosuke){
		
		i=0;
		bossRockPos=[[300,400],[700,700],[1350,650],[400,200]]
		for(i=0;i<array_length_1d(bossRockPos);i+=1){
			rockPos=bossRockPos[i]
			ins = instance_create_layer(rockPos[0],rockPos[1],"Instances",obj_Rock)
			ins.image_index=random_range(0,4)

		}

		
		}
		
	} else {
		if (!instance_exists(global.Boss)) {
			if (global.Boss == obj_Big_Inosuke) {
			
//			instance_destroy(obj_Tanjirou);
			instance_destroy(obj_TanjirouUIRenderer);
			room_goto(winRoom_Inosuke)
			} else if (global.Boss == obj_Zenitsu_Boss) {
				room_goto(winRoom_Zenitsu)
			//	instance_destroy(obj_Tanjirou);
				instance_destroy(obj_TanjirouUIRenderer);
			} 
		}
		
	}

}


//if (global.InosukeLove>=25 && !hasBossOccured){
//hasBossOccured=obj_Big_Inosuke;
//instance_create_depth(500, 300, 0, obj_Big_Inosuke)
//}
//if (global.ZenitsuLove>=25 && !hasBossOccured){
//hasBossOccured=obj_Zenitsu_Boss;
////go back?
//instance_create_depth(500, 300, 0, obj_Zenitsu_Boss)
//}

//if (hasBossOccured == obj_Big_Inosuke && !instance_exists(obj_Big_Inosuke)){

//room_goto(Ending1);
//}
//if (hasBossOccured == obj_Zenitsu_Boss && !instance_exists(obj_Zenitsu_Boss)){

//room_goto(Ending2);
//}

