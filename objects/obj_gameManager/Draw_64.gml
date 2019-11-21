
// You can write your code in this editor
draw_set_color(c_white)

//draw_text(50,90,"WASD to move, J to attack, K to Dash")
draw_sprite(spr_Inosuke_Head,0,10,10)
//draw_set_color(c_white)
draw_text(122,30,"Inosuke");
draw_set_color(c_black)
draw_rectangle(120,50,400,70,false)
draw_set_color(c_orange)
draw_rectangle(124,54,124+272*global.InosukeLove/maxLove,66,false)

draw_set_color(c_white)
draw_sprite(spr_Zenitsu_Icon,0,10,110)
draw_text(122,130,"Zenitsu");
draw_set_color(c_black)
draw_rectangle(120,150,400,170,false)
draw_set_color(c_orange)
draw_rectangle(124,154,124+272*global.ZenitsuLove/maxLove,166,false)

