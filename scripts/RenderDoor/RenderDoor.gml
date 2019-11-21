rm = obj_MapManager.maps[|obj_MapManager.currRoom]
rm.discovered=true;
for(i=0;i<4;i++){
	if (rm.rightDoor!=-1){
		ins = instance_create_layer(room_width,room_height/2,"Instances",obj_Door);
		ins.dir=0;
	}
	if (rm.leftDoor!=-1){
		ins = instance_create_layer(0,room_height/2,"Instances",obj_Door);
		ins.dir=2;
	}
	if (rm.upDoor!=-1){
		ins = instance_create_layer(room_width/2,0,"Instances",obj_Door);
		ins.dir=1;
	}
	if (rm.downDoor!=-1){
		ins = instance_create_layer(room_width/2,room_height,"Instances",obj_Door);
		ins.dir=3;
	}


}

obj_Tanjirou.invincibleElapsed=20;
obj_Tanjirou.DashElapsed=0;
//Render Monsters
for(i=0;i<3;i++){
for(j=0;j<rm.enimies[?i];j++){

if (i==0){
instance_create_depth(random_range(0,room_width),random_range(0,room_height),1,obj_Small_Inosuke);
}else if (i==1){
instance_create_depth(random_range(0,room_width),random_range(0,room_height),1,obj_Zenitsu);

}
}
}