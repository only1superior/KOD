/// @description Animation

if(floor(grav)!=0){
	if(x>xx){
		x -= grav;
		grav = grav*1.25
	}
	if(x<xx){
		bounce = bounce+.25
		grav = grav/bounce
		x += grav
	}
}
