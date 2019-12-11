/// @description Insert description here
// You can write your code in this editor
//instantiate:generate rooms

currRoom=10;//start from 8

maps = ds_list_create()


irow=5;
jcol=5;

var i=0;
for (i=0;i<irow;i++){
	var j=0;
	for(j=0;j<jcol;j++){
	rm = instance_create_depth(0,0,1000,RoomObj)
	rm.index=i*5+j;
	rm.position = [i,j]
	
	//gate?
	ds_list_add(maps,rm)
}
}

//initialize the map
existRooms = [1,6,7,8,10,11,13,16,17,18,22]

for(i=0;i<11;i++){
maps[|existRooms[i]].exist=true;

maps[|1].rockPositions = [[300,400],[700,600]]
maps[|11].rockPositions = [[700,500],[400,650]]
maps[|7].rockPositions = [[600,800]]
maps[|6].rockPositions = [[400,700],[1100,500]]
maps[|18].rockPositions = [[800,600]]
maps[|13].rockPositions = [[650,780]]
maps[|8].rockPositions = [[710,610]]
maps[|16].rockPositions = [[650,610]]
maps[|22].rockPositions = [[600,810],[800,400]]

}
//ds_map_replace(maps[|existRooms[0]].enimies, 1, 2);
//ds_map_replace(maps[|existRooms[3]].enimies, 0, 2);

ds_map_replace(maps[|1].enimies, 0, 2);
ds_map_replace(maps[|6].enimies, 1,1);
ds_map_replace(maps[|7].enimies, 0,1);
ds_map_replace(maps[|7].enimies, 1,1);
ds_map_replace(maps[|18].enimies, 0,1);
ds_map_replace(maps[|11].enimies,0,1);
ds_map_replace(maps[|13].enimies,0,1);
ds_map_replace(maps[|13].enimies,1,1);
ds_map_replace(maps[|16].enimies,1,1);
ds_map_replace(maps[|8].enimies,1,1);
ds_map_replace(maps[|22].enimies,1,2);



for(i=0;i<irow;i++){
for(j=0;j<jcol;j++){

myIndex=i*5+j;

if(maps[|myIndex].exist==true){
i_Prev=i-1;
i_Next=i+1;
j_Prev=j-1;
j_Next=j+1;
if (i_Prev>=0){
	tempRm=i_Prev*5+j;
	if (maps[|tempRm].exist==true){
		maps[|tempRm].downDoor=myIndex;
		maps[|myIndex].upDoor=tempRm;
	}
}
if (i_Next<irow){
	tempRm=i_Next*5+j;
	if (maps[|tempRm].exist==true){
		maps[|tempRm].upDoor=myIndex;
		maps[|myIndex].downDoor=tempRm;
	}
}

if (j_Prev>=0){
	tempRm=i*5+j_Prev;
	if (maps[|tempRm].exist==true){
		maps[|tempRm].rightDoor=myIndex;
		maps[|myIndex].leftDoor=tempRm;
	}
}
if (j_Next<jcol){
	tempRm=i*5+j_Next;
	if (maps[|tempRm].exist==true){
		maps[|tempRm].leftDoor=myIndex;
		maps[|myIndex].rightDoor=tempRm;
	}
}


}
}
}

RenderDoor()