/// @description Insert description here
// You can write your code in this editor

global.TanHP = clamp(global.TanHP,0,global.TanMaxHP);
//UI Setting
l_pad=150
b_pad=90
//pad = 10
bar_width = 200
bar_height=50

draw_sprite(spr_TanjirouIcon,0,20,room_height-100)
draw_set_color(c_black)
draw_rectangle(l_pad,room_height-b_pad,l_pad+bar_width,room_height-b_pad+bar_height,false);

draw_set_color(make_color_rgb(255,105,126))
draw_rectangle(l_pad+5,room_height-b_pad+5,l_pad+5+(bar_width-5)*(global.TanMaxHP-global.TanHP)/global.TanMaxHP,
room_height-5-b_pad+bar_height,false);
draw_set_color(c_white)
draw_text_transformed(l_pad+bar_width/4,room_height-b_pad+bar_height/4,
string(int64(global.TanMaxHP-global.TanHP))+"/"+string(global.TanMaxHP),
1.5,1.5,0
);

