/// @description Stamina recharge

if state_ != player.block {
	global.player_stamina = min(global.player_stamina+1, global.player_max_stamina);
}

if state_ == player.block {
	global.player_stamina = max(global.player_stamina-1, 0);
}

if global.player_stamina < global.player_max_stamina {
	alarm[1] = global.one_second;
}
