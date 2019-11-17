/// @description Insert description here
// You can write your code in this editor
if (isShowingHealthBar){
	draw_set_color(c_black);
	draw_rectangle(x,y-60,x+100,y-30,false);
draw_set_color(c_red)
draw_rectangle(x+5,y+5-60,x+5+hp/maxHP*(100-5),y-35,false)
}