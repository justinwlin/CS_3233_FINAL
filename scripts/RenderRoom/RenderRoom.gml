//door index
//0=right,1==top,2=left,3=down


pos = obj_MapManager.maps[| obj_MapManager.currRoom].position;
targetJ=pos[1];
targetI=pos[0]

switch(argument0){
	case 0:
		//go to right room
		targetJ++;
    obj_Tanjirou.x=100;

	break;
	case 1:
		obj_Tanjirou.y=room_height-100;

targetI--;
	break;
	case 2:
		obj_Tanjirou.x=room_width-100;
		targetJ--;

	break;
	case 3:
		obj_Tanjirou.y=100;
		targetI++;

break;
}

instance_destroy(obj_Door)
//instance_destroy(obj_Enemy)
instance_destroy(obj_RefreshableObj)
//all existance; create a new object
obj_MapManager.currRoom=targetI*obj_MapManager.irow+targetJ;


//render
RenderDoor()