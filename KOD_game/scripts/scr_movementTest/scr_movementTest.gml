// Process input
if (keyboard_check(vk_up) && place_free(x, y - MOV_SPD)) vspd = -MOV_SPD;
else if (keyboard_check(vk_down) && place_free(x, y + MOV_SPD)) vspd = MOV_SPD;
else vspd = 0;

if (keyboard_check(vk_left) && place_free(x - MOV_SPD, y)) hspd = -MOV_SPD;
else if (keyboard_check(vk_right) && place_free(x + MOV_SPD, y)) hspd = MOV_SPD;
else hspd = 0;


// Fix diagonal speed increase
if (abs(hspd) == abs(vspd))
{
	hspd = sign(hspd) * (MOV_SPD/(sqrt(2)));
	vspd = sign(vspd) * (MOV_SPD/(sqrt(2)));
	hspd = round(hspd); vspd = round(vspd);
}

x += hspd;
y += vspd;