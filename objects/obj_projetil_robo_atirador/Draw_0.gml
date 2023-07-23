//Me Desenhando
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, angle, -1, 1);

gpu_set_blendmode(bm_add);

draw_sprite_ext(spr_brilho, 0, x, y, 1, 1, 0, brilho_color, .5);

gpu_set_blendmode(bm_normal);
