///@desc

gun_yscale = lado;

var _x = x + (6 * lado);
var _y = y - 29;

//Sombra da arma
shader_set(shd_tile_shadow);
draw_sprite_ext(gun_sprite, image_index, _x, _y + 3, gun_xscale, .6 * gun_yscale, gun_angle, 1, .5);
shader_reset();

shader_set(shd_tile_shadow);
draw_sprite_ext(sprite_index, image_index, x, y, xscale, -.6, 0, -1, .5);
shader_reset();

if(!tomei_hit)
{
	draw_sprite_ext(gun_sprite, image_index, _x, _y, gun_xscale, gun_yscale, gun_angle, -1, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, angle, -1, 1);
	
}
else
{
	gpu_set_fog(1,c_white,1,0)
	draw_sprite_ext(gun_sprite, image_index, _x, _y, gun_xscale, gun_yscale, gun_angle, -1, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, angle, -1, 1);
	gpu_set_fog(0,c_white,0,1)

}

