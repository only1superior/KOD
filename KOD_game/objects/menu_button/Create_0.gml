
image_speed = 0;
if(instance_find(menu_button,0)==self.id){
	for(var i = 1; i<3; i++){
		a = instance_create_depth(self.x,self.y+(i*(sprite_height-50)),0,menu_button);
		a.image_index = i;
	}
}

// var define for animation
x = x + 450;
xx = x-450;
grav = 1;
bounce = .5;