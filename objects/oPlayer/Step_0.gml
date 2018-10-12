/// @description Walking & Jumping
// You can write your code in this editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

if (place_meeting(x,y+1,oGround)) && (key_jump){
		vsp = -7;
}



//Horizontal
if (place_meeting(x+hsp, y, oGround)){
	while(!place_meeting(x+sign(hsp),y,oGround)){
		x=x+sign(hsp);
	}
hsp = 0;
	
}

x = x+hsp;

//Vertical
if (place_meeting(x, y+vsp, oGround)){
	while(!place_meeting(x,y+sign(vsp),oGround)){
		y=y + sign(vsp);
	}
vsp = 0;
	
}
y = y+vsp;

//Animation

if(!place_meeting(x,y+1,oGround)){
	sprite_index = sPlayerA;
	
} else {
	if(hsp == 0){
		sprite_index = sPlayer;	
	} else {
		sprite_index = sPlayerR;
	}
}

//If go left, turn sprite around
if(hsp != 0){
image_xscale = sign(hsp);
}










