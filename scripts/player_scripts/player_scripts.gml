function movimentacao(){
	//input
var _key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _key_jump = keyboard_check_pressed(vk_space);

	//movimentação
spd_h = spd * (_key_right - _key_left);
spd_v += grav;

if (place_meeting(x, y+1, obj_wall))
{
	if (_key_jump)
	spd_v = -14;
}

//colisão
if (place_meeting(round(x+spd_h), round(y), obj_wall))
{
	while (!place_meeting(round(x+sign(spd_h)), round(y), obj_wall))
	x += sign(spd_h)
	spd_h = 0;
}

x += spd_h;

if (place_meeting(round(x), round(y+spd_v), obj_wall))
{
	while (!place_meeting(round(x), round(y+sign(spd_v)), obj_wall))
	y += sign(spd_v);
	spd_v = 0;
}

y += spd_v;
}