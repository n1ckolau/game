///@function scr_movimento_colisao(cima, esquerda, baixo, direita, pulo)
function scr_movimento_colisao(_up, _left, _down, _right, _jump)
{
	//controles
    var _key_up     = keyboard_check(_up);
    var _key_left   = keyboard_check(_left);
    var _key_down   = keyboard_check(_down);
    var _key_right  = keyboard_check(_right);
    var _key_jump   = keyboard_check_pressed(_jump);
	
	//velocidade pros lados
    spd_h = (_key_right - _key_left) * spd_move;

    //velocidade pra cima e baixo
	spd_v += grav;
	
	//se pular e tiver nas estruturas
	var _structures = place_meeting(x, y + 1, obj_structures);
    if _key_jump and _structures
        {
			//pode pular
            spd_v = -spd_jump;
        }
	
	//se manter nas rampas quando descendo
	move_and_collide(spd_h, 0, obj_structures, abs(ceil(spd_h)));
		
	//colisao horizontal e vertical
	if array_length(move_and_collide(0, spd_v, obj_structures, abs(ceil(spd_v)), 0, 0)) > 0
	{
		if (spd_v > 0)
		{
			ammount_jump = 10;
			spd_v = 0;
		}
	}
}