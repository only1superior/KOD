/// @param speed
/// @param up image
/// @param down image
/// @param left image
/// @param right image

var SPEED = argument0;

switch(keyboard_key){ // gets the current keyboard key
	case vk_up: // up
		y-=SPEED;
		image_index = 0;
		break;
	case vk_down: // down
		y+=SPEED;
		image_index = 1;
		break;
	case vk_left: // left
		x-=SPEED;
		image_index = 2;
		break;
	case vk_right: // right
		x+=SPEED;
		image_index = 3;
		break;
	// dont default, thatll cause errors
}