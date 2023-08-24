scr_inputs();

spd_h = spd * (_key_right - _key_left);
spd_v += grav;

if (place_meeting(x, y+1, obj_wall))
{
	if (_key_jump)
	spd_v = -14;
}

scr_colisao();
