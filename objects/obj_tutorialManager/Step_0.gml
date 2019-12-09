/// @description Insert description here
// You can write your code in this editor
if((room == SplashScreen || room == Tutorial_Screen_1 
	|| room == Tutorial_Screen_2 || room == Tutorial_Screen_3)
	&& keyboard_check_pressed(vk_anykey)){
	room_goto_next()
}