/// @description Swing
switch (turn_direction)
{
case 1: // right
	if (angle < 180) angle += 2; else
	if (alarm[0] <= 0) alarm[0] = 120;
	break;

case -1: // left
	angle = angle_wrap(angle - 2);
	if (angle < 345) turn_direction = 0;
	break;

default: // reset
	if (angle != 0)
	{
		angle = angle_wrap(angle + 2 * sign(angle_difference(0, angle)));
	}
}

// apply angle
x = xstart + floor(sine[angle] * 72);
y = ystart + floor(cosine[angle] * 72);
target_id.x = xstart - floor(sine[angle] * 72);
target_id.y = ystart - floor(cosine[angle] * 72);