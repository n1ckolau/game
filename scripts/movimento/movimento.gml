///@function movimento(cima, esquerda, baixo, direita, pulo)
function movimento(_cima, _esquerda, _baixo, _direita, _pulo)
{
	
	//controle
	var _key_up		= keyboard_check(_cima);
	var _key_left	= keyboard_check(_esquerda);
	var _key_down	= keyboard_check(_baixo);
	var _key_right	= keyboard_check(_direita);
	var _key_jump	= keyboard_check_pressed(_pulo);
	
	//velocidade
	spd_h = (_key_right - _key_left) * spd;

	//pulo
	var _chao = place_meeting(x, y+1, obj_wall) 
	if (_chao)
	{
		if (_key_jump)
		{
		spd_v = -spd_jump;
		}
	else
	{
	spd_v += grav;
	}
}
}