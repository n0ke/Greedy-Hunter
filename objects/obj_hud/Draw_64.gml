
if (instance_exists(obj_player))
{
	draw_sprite(spr_healthbar,0,10,20)
	vida_pos = lerp(vida_pos, ((obj_player.vida / obj_player.vida_max)* 5.5), .08);
	
	gpu_set_fog(true, c_white, 0, 1);
		
	draw_sprite_ext(spr_health,0,11,20,vida_pos,1 ,0,-1,1);
	
	gpu_set_fog(false, c_white, 1, 0);
	
	draw_sprite_ext(spr_health,0,11,20, ((obj_player.vida/obj_player.vida_max)*5.5),1,0,-1,1);
	
	draw_set_font(fnt_geral)
	draw_outline(15,25,obj_weapon.arma_ativa.ammo,,,0,1)
	draw_set_valign(fa_top) draw_set_halign(fa_middle )  draw_sprite(spr_coin,get_timer()/100000,30,32)
}