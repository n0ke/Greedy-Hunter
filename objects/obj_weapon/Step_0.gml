


var shot_key = mouse_check_button(mb_left)
if(cooldown > 0) cooldown--;
if shot_key && cooldown <= 0 and !global.modo_inventario && ammo > 0{
	obj_camera.cameraShake = 30;
	ammo--;
	var a = instance_create_layer(x, y, "Balas", obj_bullet, {direction: image_angle + random_range(-5,5), speed: 20})
	audio_play_sound(snd_shot, 0, false, , , random_range(.9, 1.1));
	var _reverb = audio_effect_create(AudioEffectType.Reverb1)
	_reverb.mix = .2
	audio_bus_main.effects[0] = _reverb
	recoil = arma_ativa.recoil
	cooldown = arma_ativa.cadencia;
	a.damage = arma_ativa.dmg
	with(obj_player)
	{
		spd.x = lengthdir_x(other.arma_ativa.knockback, point_direction(mouse_x, mouse_y + 8,x,y));
		spd.y = lengthdir_y(other.arma_ativa.knockback, point_direction(mouse_x, mouse_y + 8,x,y));
	}
}
var _sep = 12;
var _len = arma_ativa.length;
var dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y + _sep);
x = obj_player.x + lengthdir_x(_len, dir);
y = obj_player.y - _sep + lengthdir_y(_len, dir);


image_angle = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
image_yscale = obj_player.lado;
direction = dir	

recoil *= image_xscale
recoil = lerp(recoil,0,0.2)
x-=lengthdir_x(recoil,dir)
y-=lengthdir_y(recoil,dir)