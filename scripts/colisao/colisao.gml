//colisão se calcula antes de realizar o movimento
function colisao()
{

	//colisão horizontal
	var _colh = instance_place(x + spd_h, y, obj_wall);
	if (_colh)
	{
		if (spd_h > 0)
		{
			x = _colh.bbox_left + (x - bbox_right);
		}	
		if (spd_h < 0)
		{
			x = _colh.bbox_right + (x - bbox_left);
		}
		
	//se colidir
	spd_h = 0;
	}
		
	//em movimento horizontal
	x += spd_h;
		
	//colisao vertical
	var _colv = instance_place(x, y + spd_v, obj_wall);
	if (_colv)
	{
		if (spd_v > 0)
		{
			y = _colv.bbox_top + (y - bbox_bottom);
		}
		if (spd_v < 0)
		{	
			y = _colv.bbox_bottom + (y - bbox_top);
		}
		
	//se colidir
	spd_h = 0;
	}
	
	//em movimento vertical
	y += spd_v;
}
