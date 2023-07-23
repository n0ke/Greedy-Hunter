speed = lerp(speed, 0, spd_dec);

life--;

if(life <= 0) instance_destroy();



image_angle = direction;

depth = -bbox_bottom;
