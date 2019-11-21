/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
draw_set_alpha(0.3)
draw_rectangle(x,y,x+5*50,y+5*50,false);//,0,0,0,false)
draw_set_alpha(1)
draw_set_color(c_red)
var i=0;
for(i=0;i<irow;i++){
var j=0;
for(j=0;j<jcol;j++){
if (maps[|i*irow+j].exist && maps[|i*irow+j].discovered){
	draw_set_color(c_gray)
	if (i*irow+j==currRoom){
	draw_set_color(c_red)
	}

	draw_rectangle(x+j*50,y+i*50,x+(j+1)*50,y+(i+1)*50,false)
	if (i*irow+j==currRoom){
	
	draw_sprite_ext(spr_TanjirouIcon,0,x+j*50,y+i*50,0.6,0.6,0,c_white,1);
	}
}
}
}


	draw_set_color(c_yellow);

for(i=0;i<irow;i++){
	for(j=0;j<jcol;j++){
		curr =i*irow+j;
		rm = maps[|curr];
		if (rm.discovered){
			if (rm.leftDoor!=-1){
				draw_rectangle(x+j*50,y+i*50+20,x+j*50+5,y+i*50+25,false);
			}

			if (rm.rightDoor!=-1){
				draw_rectangle(x+j*50+45,y+i*50+20,x+(j+1)*50,y+i*50+25,false);
			}

			if (rm.upDoor!=-1){
				draw_rectangle(x+j*50+20,y+i*50,x+j*50+25,y+i*50+5,false);
			}
			if (rm.downDoor!=-1){
				draw_rectangle(x+j*50+20,y+i*50+45,x+j*50+25,y+i*50+50,false);
			}

		}
}}