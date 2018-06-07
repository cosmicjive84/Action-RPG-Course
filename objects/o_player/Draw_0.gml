draw_sprite(s_medium_shadow, 0, x, y);
draw_self();

if sprite_exists(found_item_sprite_)
{
	draw_sprite(found_item_sprite_, 0, x, y-32);
}

if !blocking_ {
	draw_self_flash(c_white, 12, alarm[0]);
}

if blocking_ {
	draw_sprite(s_shield_item, 0, x, y-8);
}