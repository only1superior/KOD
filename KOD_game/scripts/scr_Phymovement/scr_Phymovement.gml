/// @param speed
/// @param boost
/// @param slowdown
/// @param rotation
/// @param mode
/*

this is used to create a physics type of movement,
allowing the player to travel in all directions

mode types:
0 is pulsive...you need to press up to be moving in that direction
1 is dynamic...it automatically goes in the direction

*/

// movement
switch(argument4){ // switch statement for the mode

	case 0:
		switch(keyboard_key){
			case vk_left:
				image_angle+=argument3; // rotates object left
			break;
			case vk_right:
				image_angle-=argument3; // rotates object right
			break;
			case vk_up:
				direction = image_angle; // sets direction 
				speed = argument0;
			break;
			case vk_down:
				direction = (image_angle-180); // flips direction
				speed = argument0;
			break;
		}
		
	case 1:
	
		if(keyboard_check(vk_left)){
			image_angle+=argument3 // rotates direction left
		}
		
		if(keyboard_check(vk_right)){
			image_angle-=argument3 // rotates direction right
		}
		
		if(speed<argument2){ // speed acclerator
			speed+=argument2
		}
				if(keyboard_check(vk_up)){
					direction = (image_angle+90); // moves in direction its facing
				
					if(keyboard_check(vk_shift)){ // sprints
						speed = (argument0+argument1); 
					}
					else if(speed>argument0){ // slows down from a sprint
					speed-=argument2; 
					}
					else{ // normal run
						speed = argument0;
					}
				}
				else if(speed>0){
					speed -= argument2; // decreases to 0 when up isnt pressed
				}
			
				if(keyboard_check(vk_down)){
					direction = (image_angle-180); // flips direction
					if(keyboard_check(vk_shift)){
						speed = (argument0+argument1); // sprints
					}
					else if(speed>argument0){ // slows down from sprint
					speed-=argument2;
					}
					else{ // normal run
					speed = argument0;
					}
				}
	break;		
}

if(image_angle>360){ // makes sure image_angle doesnt go over 360...saves memory
image_angle = (image_angle - 720);
}
if(image_angle<-360){ // makes sure image_angle doesnt go over -360...saves memory
image_angle = (image_angle + 720);
}
