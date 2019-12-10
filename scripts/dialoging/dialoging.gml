isShowing=false;
if (argument0==0){
		//met inosuke
		//DialogueManager.speakerName
		metInosuke = obj_gameManager.metInosuke;//met or die?

		if (argument1=="met"){
			if (metInosuke==0){
			DialogueManager.textToDisplay = ["Just right, Mojiro! Come and fight me!","Hey! I'm not here to fight ...","Chototsu Moushin!!!"]
			DialogueManager.speakerName=["Inosuke","Tanjirou","Inosuke"]
			DialogueManager.speakerIcon=[spr_Inosuke_Head,spr_TanjirouIcon,spr_Inosuke_Head]
			isShowing=true;
			obj_gameManager.metInosuke++;
		}
			
		}else if (argument1=="die"){
			if (metInosuke==3){
				DialogueManager.textToDisplay = ["For the first time someone can make me feel good! You caught my attention!",
				"Stop running rampant anymore!"]
				DialogueManager.speakerName=["Inosuke","Tanjirou"]
			DialogueManager.speakerIcon=[spr_Inosuke_Head,spr_TanjirouIcon]
			
			isShowing=true;
			}else if (metInosuke==4){
				DialogueManager.textToDisplay = ["Impressive! Bushirou, let's fight til forever!!"]
				DialogueManager.speakerName=["Inosuke"]
			DialogueManager.speakerIcon=[spr_Inosuke_Head]
			
			isShowing=true;
			}
			obj_gameManager.metInosuke++;
		}
		

}else if (argument0==1){

	metZenitsu = obj_gameManager.metZenitsu;


	if (argument1=="met"){
	if (metZenitsu==0){
		isShowing=true;
		DialogueManager.textToDisplay =
		["Ahhhh! Do not come near me! I'm so scared!",
		"It's okay! I won't hurt you!",
		"Ohh Ohh ohh! leave me alone!"]
		DialogueManager.speakerIcon=[spr_Zenitsu_Icon,spr_TanjirouIcon,spr_Zenitsu_Icon]
		DialogueManager.speakerName=["Zenitsu","Tanjirou","Zenitsu"]
obj_gameManager.metZenitsu++;
		}
			
	}else if (argument1=="die"){

		if (metZenitsu==3){
			isShowing=true;
					DialogueManager.speakerIcon=[spr_Zenitsu_Icon,spr_TanjirouIcon]

			DialogueManager.textToDisplay =["....(Crying)","(How can I stop him from crying ...)"]
			DialogueManager.speakerName=["Zenitsu","Tanjirou"]
		}else if (metZenitsu==4){
			isShowing=true;
					DialogueManager.speakerIcon=[spr_Zenitsu_Icon]

			DialogueManager.textToDisplay =["Tanjiro, you are so weird ... you are different from everyone else I ever seen."]
			DialogueManager.speakerName=["Zenitsu"]
		}
			obj_gameManager.metZenitsu++;
	}


}
if (isShowing){
DialogueManager.isDisplaying=true;
DialogueManager.currText=0;
DialogueManager.currDisplayText=0;}