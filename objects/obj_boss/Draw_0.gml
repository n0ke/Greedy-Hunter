///@desc

gun_yscale = lado;

var _x = x + (6 * lado);
var _y = y - 29;

//Sombra da arma
shader_set(shd_tile_shadow);
shader_reset();

var _currsprite = (attacking > 0) ? spr_boss_attack : sprite_index;

shader_set(shd_tile_shadow);
draw_sprite_ext(_currsprite, image_index, x, y, xscale, -.6, 0, -1, .5);
shader_reset();

if(!tomei_hit)
{
	draw_sprite_ext(_currsprite, image_index, x, y, xscale, yscale, angle, -1, 1);
	
}
else
{
	gpu_set_fog(1,c_white,1,0)
	draw_sprite_ext(_currsprite, image_index, x, y, xscale, yscale, angle, -1, 1);
	gpu_set_fog(0,c_white,0,1)

}

