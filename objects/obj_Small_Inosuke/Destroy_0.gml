/// @description Insert description here
// You can write your code in this editor

instance_destroy(myAtkCollider)
if (hp<=0){
dialoging(0,"die")

global.InosukeLove+=5;
orig = obj_MapManager.maps[| obj_MapManager.currRoom].enimies[?0];
ds_map_replace(obj_MapManager.maps[| obj_MapManager.currRoom].enimies,
0,orig-1)

}