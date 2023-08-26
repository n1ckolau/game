//colisão se calcula antes de realizar o movimento
function scr_colisao()
{
	//aplicar gravidade
	spd_v += grav;

	//se tiver colisão horizontal
	var _colh = instance_place(round(x + spd_h), round(y), obj_wall);
	if (_colh)
	{
		if (spd_h > 0)
		{
			x = _colh.bbox_left + (x - bbox_right);
		}   
		else if (spd_h < 0)
		{
			x = _colh.bbox_right + (x - bbox_left);
		}
		else
		{
			//colide
			spd_h = 0;
		}
	}
	else
	{
		//pode andar
		x += spd_h;
	}

	//se tiver colisão vertical
	var _colv = instance_place(round(x), round(y + spd_v), obj_wall);
	if (_colv)
	{
		if (spd_v > 0)
		{
			y = _colv.bbox_top + (y - bbox_bottom);
		}
		else
		{
			y = _colv.bbox_bottom + (y - bbox_top);
		}
		//colide
		spd_v = 0;
	}
	else
	{
		//pode pular
		y += spd_v;
	}

	//se estiver no chão
	if (y >= bbox_bottom)
	{
		//não cai
		spd_v = 0;
	}
}
