/// @description Insert description here
// You can write your code in this editor
instance_destroy(myAtkCollider)
if (hp<=0){
global.ZenitsuLove+=5;
orig = obj_MapManager.maps[| obj_MapManager.currRoom].enimies[?1];
ds_map_replace(obj_MapManager.maps[| obj_MapManager.currRoom].enimies,
1,orig-1)

}