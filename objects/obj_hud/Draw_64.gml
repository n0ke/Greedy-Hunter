
if (instance_exists(obj_player))
{
	var _gui_width = display_get_gui_width();
	var _gui_height = display_get_gui_height()
	
	//draw_sprite(spr_healthbar,0,10,20)
	//vida_pos = lerp(vida_pos, ((obj_player.vida / obj_player.vida_max)* 5.5), .08);
	
	//gpu_set_fog(true, c_white, 0, 1);
		
	//draw_sprite_ext(spr_health,0,11,20,vida_pos,1 ,0,-1,1);
	
	//gpu_set_fog(false, c_white, 1, 0);
	
	//draw_sprite_ext(spr_health,0,11,20, ((obj_player.vida/obj_player.vida_max)*5.5),1,0,-1,1);
	
	draw_set_halign(fa_right)
	draw_set_font(fnt_geral)
	draw_outline(15, 5,obj_weapon.arma_ativa.ammo,,,0,1)
	draw_sprite(spr_coin,get_timer()/100000,20, 12)
	
	draw_set_halign(fa_right);
	draw_outline(_gui_width - 5, 5, $"Dungeon: {global.dungeon}", , , 0, 1);
	draw_set_halign(fa_left);
}