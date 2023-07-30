///@desc

gun_yscale = lado;

var _x = x + (6 * lado);
var _y = y - 29;

//Sombra da arma
shader_set(shd_tile_shadow);
shader_reset();

shader_set(shd_tile_shadow);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, -.6 * image_yscale, 0, -1, .5);
shader_reset();

if(!tomei_hit)
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, angle, -1, 1);
	
}
else
{
	gpu_set_fog(1,c_white,1,0)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, angle, -1, 1);
	gpu_set_fog(0,c_white,0,1)

}

