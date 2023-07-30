//@desc

//draw_line(x, y, obj_player.x, obj_player.y);

shader_set(shd_tile_shadow);
draw_sprite_ext(sprite_index, image_index, x, bbox_bottom, xscale * image_xscale, -.6 * image_yscale, 0, -1, .5);
shader_reset();

if(!tomei_hit)
{
	draw_sprite_ext(sprite_index, image_index, x, y, xscale* image_xscale, yscale * image_yscale, angle, -1, 1);
}
else
{
	
	draw_sprite_ext(sprite_index, image_index, x, y, xscale* image_xscale, yscale * image_yscale, angle, -1, 1);
	
}