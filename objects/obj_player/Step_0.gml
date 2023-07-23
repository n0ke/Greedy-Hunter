depth = -y;

//	Input
global.modo_inventario = keyboard_check_pressed(vk_tab) ? !global.modo_inventario : global.modo_inventario;

if !global.modo_inventario{
	dir.x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	dir.y = keyboard_check(ord("S")) - keyboard_check(ord("W"));
} else{
	dir.x = 0;
	dir.y = 0;
}
var _angle = point_direction(0, 0, dir.x, dir.y);

obj_camera.cameraSetTarget(x, y);

lado = sign(x - mouse_x) != 0 ? -sign(x - mouse_x) : image_xscale;

//	Movimento
spd.x = lerp(spd.x, lengthdir_x(WALK_SPEED * (dir.x != 0), _angle), ACC);
spd.y = lerp(spd.y, lengthdir_y(WALK_SPEED * (dir.y != 0), _angle), ACC);

move_and_collide(spd.x, spd.y, obj_colisor);

//	Inventario