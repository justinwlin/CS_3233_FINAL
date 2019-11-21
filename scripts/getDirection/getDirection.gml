//dont change
x=argument0
y=argument1
xDis=abs(obj_Tanjirou.x-x)
			yDis=abs(obj_Tanjirou.y-y)
			if (xDis<200&& yDis<200){
				if ( xDis<yDis){
				if (obj_Tanjirou.x>x){
					dashDir=0;
				}else {dashDir=1;}
				}else{
				if (obj_Tanjirou.y>y){
					dashDir=3;
				}else {
					dashDir=2;
					}
				}
			}else if ( xDis>yDis){
				if (obj_Tanjirou.x>x){
					dashDir=0;
				}else {dashDir=1;}
			}else{
				if (obj_Tanjirou.y>y){
					dashDir=3;
				}else {
					dashDir=2;
					}
				}
				
				return dashDir
				