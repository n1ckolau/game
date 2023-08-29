///@function scr_movimento_colisao(cima, esquerda, baixo, direita, pulo)
function scr_movimento_colisao(_up, _left, _down, _right, _jump)
{
//controles
    var _key_up     = keyboard_check(_up);
    var _key_left   = keyboard_check(_left);
    var _key_down   = keyboard_check(_down);
    var _key_right  = keyboard_check(_right);
    var _key_jump   = keyboard_check_pressed(_jump);
	
//velocidade horizontal
    spd_h = (_key_right - _key_left) * spd_move;

//velocidade vertical
	spd_v += grav;
	
//se estiver nas estruturas
	var _structures = place_meeting(x, y + 1, obj_structures)
    if _structures
	{
	spd_v = 0;
		if _key_jump
		{
		spd_v = -spd_jump; //e pode pular
		}
	else 
		if (spd_v < 10)
		{
		spd_v += 1;
		}
	}
	//se não tem chão na horizontal embaixo do player, mas na frente tem e um pouco mais abaixo
		if (!place_meeting(x + spd_h, y + 2, obj_structures) and place_meeting(x + spd_h, y + 10, obj_structures))
		{
	
	//vai transferir a velocidade horizontal negativa para a velocidade vertical e zerar a velocidade horizontal
		spd_v = abs(spd_h);
		spd_h = 0;
		}
	
//colisao horizontal e vertical
	move_and_collide(spd_h, spd_v, obj_structures, 4, 0, 0, spd_move, -1);
}