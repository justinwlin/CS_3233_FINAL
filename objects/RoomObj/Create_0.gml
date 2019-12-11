/// @description Insert description here
// You can write your code in this editor

index=0;
exist=false;
position = [0,0]
leftDoor=-1;
rightDoor=-1
upDoor=-1
downDoor=-1

discovered=false;

enimies = ds_map_create();
for(i=0;i<3;i++){
ds_map_add(enimies, i, 0);

}

rockPositions=[]