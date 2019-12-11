/// @description Insert description here
// You can write your code in this editor
if (isDisplaying){
draw_set_color(c_black)
draw_set_alpha(0.5)
draw_rectangle(100,550,1500,800,false)
draw_set_alpha(1)
draw_set_color(c_white)


draw_sprite(speakerIcon[currText],0,200,580)
draw_text_ext_transformed(400,580,speakerName[currText],20,300,2,2,0)
draw_text_ext_transformed(400,630,displayerText,20,500,2,2,0)
//isDisplaying
}