left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
up = keyboard_check_pressed(vk_up);

spd_h = left-right

x += spd_h

if place_meeting(x, y+1, obj_parede)
{
	vspeed = 0
}
else
{
	vspeed += 0.3
}

if up and jump>0
{
	vspeed = -3
	jump -=1
}