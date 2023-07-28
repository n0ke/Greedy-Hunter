depth = -y;

//	Input

var _spd_real = point_distance(x,y,x+spd.x,y+spd.y)



if (_spd_real > .5 )
{
	if ((y - mouse_y) <= 0) sprite_index = spr_player_fwd_walking;
	else sprite_index = spr_player_back_walking;
	
	if (random(4) < 1)
	{
		instance_create_layer(x+random_amp(8),y+random_amp(2),"Instances",obj_dustwalk);
	}
}
else
{
	if ((y - mouse_y) <= 0) sprite_index = spr_player_fwd;
	else sprite_index = spr_player_back;
}
if !global.modo_inventario{
	dir.x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	dir.y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
} else{
	dir.x = 0;
	dir.y = 0;
}
var _angle = point_direction(0, 0, dir.x, dir.y);

obj_camera.cameraSetTarget(x, y);

lado = sign(x - mouse_x) != 0 ? -sign(x - mouse_x) : lado;

//	Movimento
spd.x = lerp(spd.x, lengthdir_x(WALK_SPEED * (dir.x != 0), _angle), ACC);
spd.y = lerp(spd.y, lengthdir_y(WALK_SPEED * (dir.y != 0), _angle), ACC);

move_and_collide(spd.x, spd.y, obj_colisor);


#region HitFlash

if(tempo_flash > 0)
{
	if(random(2) < 1){xscale = .8; yscale = 1.2}
	else {xscale = 1.2; yscale = .8;}
	
	tempo_flash--;
	tomei_hit = true;
}
else
{
	tomei_hit = false;	
}
cooldown_hit--;

#endregion

xscale = lerp(xscale, 1, .15);
yscale = lerp(yscale, 1, .15);
image_alpha = clamp(image_alpha,.5,1)
if (cooldown_hit > 0) image_alpha = sin(get_timer()/10000) else image_alpha = 1

pony_spd = elastic(pony_r, pony_spd, (spd.x - spd.y * lado) * 5, .75, .066);
pony_r += pony_spd;

_weapon.depth = depth + sign(y - mouse_y);