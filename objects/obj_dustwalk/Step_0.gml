///@desc



image_xscale -= .06;
image_yscale -= .06;

image_alpha -= .08;


if(image_xscale <= 0) instance_destroy();

depth = -bbox_bottom;