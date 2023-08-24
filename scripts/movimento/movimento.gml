///@function movimento(esquerda, direita, cima, baixo, pulo)
function movimento(_cima, _esquerda, _baixo, _direita, _pulo)
{
	//movimentação
	var _key_up		= keyboard_check(_cima);
	var _key_left	= keyboard_check(_esquerda);
	var _key_down	= keyboard_check(_baixo);
	var _key_right	= keyboard_check(_direita);
	var _key_jump	= keyboard_check_pressed(_pulo);
	
	//velocidade
	spd_h = spd * (_key_right - _key_left);
	spd_v += grav;

	//pulo
	if (place_meeting(x, y+1, obj_wall) )
	{
		if (_key_jump)
		{
		spd_v = -14;
		}
	}

	//colisão horizontal
	if (place_meeting(round(x+spd_h), round(y), obj_wall) )
	{
		while (!place_meeting(round(x+sign(spd_h)), round(y), obj_wall) )
		x += sign(spd_h)
		spd_h = 0;
	}

	x += spd_h;

	//colisao vertical
	if (place_meeting(round(x), round(y+spd_v), obj_wall) )
	{
		while (!place_meeting(round(x), round(y+sign(spd_v)), obj_wall) )
		y += sign(spd_v);
		spd_v = 0;
	}

	y += spd_v;
}