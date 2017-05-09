switch(keyboard_key){
	case vk_escape:
		game_end();
		// delete anything that needs to be deleted
		// or clean anything that needs to be cleaned
		break;
	case ord("R"):
		// used to retart the room
		room_restart();
	break;
}