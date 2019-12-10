rm = obj_MapManager.maps[|obj_MapManager.currRoom]
rm.discovered=true;
for(i=0;i<4;i++){
	if (rm.rightDoor!=-1){
		ins = instance_create_layer(room_width-260,room_height/2,"Instances_1_1",obj_Door);
		ins.dir=0;
		ins.image_xscale=-1;
	}else{
		ins = instance_create_layer(room_width-260,room_height/2,"Instances_1_1",wall1);
		ins.image_xscale=-1;
	}
	if (rm.leftDoor!=-1){
		ins = instance_create_layer(220,room_height/2,"Instances_1_1",obj_Door);
		ins.dir=2;
	}else{
		ins = instance_create_layer(220,room_height/2,"Instances_1_1",wall1);
	}
	if (rm.upDoor!=-1){
		ins = instance_create_layer(room_width/2,100,"Instances_1_1",obj_Door);
		ins.dir=1;
		ins.image_angle = -90;
	}else{
		ins = instance_create_layer(room_width/2,100,"Instances_1_1",wall1);
		ins.image_angle=-90;
	}
	if (rm.downDoor!=-1){
		ins = instance_create_layer(room_width/2,room_height-50,"Instances_1_1",obj_Door);
		ins.image_angle = 90;
		ins.dir=3;
	}else{
		ins = instance_create_layer(room_width/2,room_height-50,"Instances_1_1",wall1);
		ins.image_angle=90;
	}


}

obj_Tanjirou.invincibleElapsed=20;
obj_Tanjirou.DashElapsed=0;
//Render Monsters
for(i=0;i<3;i++){
for(j=0;j<rm.enimies[?i];j++){

if (i==0){
instance_create_depth(random_range(220,room_width-290),random_range(250,room_height-100),1,obj_Small_Inosuke);
}else if (i==1){
instance_create_depth(random_range(220,room_width-290),random_range(250,room_height-100),1,obj_Zenitsu);

}
}
}