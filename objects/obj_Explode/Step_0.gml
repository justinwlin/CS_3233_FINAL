/// @description Insert description here
// You can write your code in this editor
if (opening){
elapsed+=10;
if (elapsed>=20){
opening=false;
}
}else{

elapsed--;
if (elapsed<0){
	instance_destroy()
}
}
image_alpha=elapsed/20;
