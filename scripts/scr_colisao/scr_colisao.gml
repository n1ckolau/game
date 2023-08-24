function scr_colisao(){
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