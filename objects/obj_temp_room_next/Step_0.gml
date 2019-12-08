/// @description Insert description here
// You can write your code in this editor
if(room != startRoom and keyboard_check_pressed(vk_anykey) and room_next(room) != -1){
	room_goto_next()
}