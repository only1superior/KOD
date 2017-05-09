// Animate character based on last direction
switch(keyboard_key)
{
	case vk_up:
	image_index = 0;
	break;
	
	case vk_down:
	image_index = 1;
	break;
	
	case vk_left:
	image_index = 2;
	break;
	
	case vk_right:
	image_index = 3;
	break;
}

// Animation speed
image_speed = 0;