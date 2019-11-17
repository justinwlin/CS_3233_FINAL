var i=0;
for(i=0;i<random_range(5,8);i++){
	ins = instance_create_depth(argument0,argument1,depth-1,obj_heart);
	ins.image_angle = random_range(45,135)
	ins.direction = ins.image_angle
	ins.speed=random_range(4,6)
	scale = random_range(5,10)
	ins.image_xscale = scale/10;
	ins.image_yscale = scale/10
}
