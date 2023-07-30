// Inherit the parent event
event_inherited();

if (image_xscale > .75){
	repeat(2) instance_create_depth(x, y, depth, obj_inimigo_3, {image_xscale : image_xscale * .75, image_yscale : image_yscale * .75, velv: random_amp(5), velh: random_amp(5)});
}