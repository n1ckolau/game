//input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_jump = keyboard_check_pressed(vk_space);

//movimentação
spd_h = 7 * (key_right - key_left);
spd_v += 0.5;

if (place_meeting(x, y+1, obj_parede))
{
	if (key_jump)
	spd_v = -14;
}

//colisão
if (place_meeting(round(x+spd_h), round(y), obj_parede))
{
	while (!place_meeting(round(x+sign(spd_h)), round(y), obj_parede))
	x += sign(spd_h)
	spd_h = 0;
}

x += spd_h;

if (place_meeting(round(x), round(y+spd_v), obj_parede))
{
	while (!place_meeting(round(x), round(y+sign(spd_v)), obj_parede))
	y += sign(spd_v);
	spd_v = 0;
}

y += spd_v;