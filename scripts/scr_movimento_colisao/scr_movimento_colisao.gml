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
    spd_h = (_key_right - _key_left) * spd;

    //velocidade pra cima e baixo
	spd_v = spd_v + grav;
	
	//se pode pular
	var _ground = place_meeting(x, y+1, obj_wall);
    if (_ground)
    {
        if (_key_jump)
        {
            spd_v = -spd_jump;
        }
        else
        {
            spd_v = 0;
        }
    }
	
	//colisao horizontal e vertical
	move_and_collide(spd_h, spd_v, obj_wall);
}