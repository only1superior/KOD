/// @description Events
switch(image_index){
case 0:
// start game
break;
case 1:
if(instance_exists(option_window)){
show_message("options window is already open")
}
else{
instance_create_depth(room_width/2,room_height/2,-1,option_window);
}
break;
case 2:
game_end();
break;
}