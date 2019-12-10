/// @description Insert description here
// You can write your code in this editor
if (isDisplaying){
if (isAnimating){
	displayerText = string_copy(textToDisplay[currText],0,currDisplayText);
	currDisplayText++;
	if (currDisplayText>string_length(textToDisplay[currText])){
		currDisplayText=0;
		isAnimating=false;
}
}

if (keyboard_check_pressed(vk_space)){
	if (isAnimating){
		isAnimating=false;
		displayerText = textToDisplay[currText];
		currDisplayText=0;
		}
	else{
		currText++;
		if (currText<array_length_1d(textToDisplay)){

		}else{
			currText=0;
			isDisplaying=false;
		}	
		isAnimating=true;
		}
	}

}