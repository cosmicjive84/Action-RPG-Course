/// @description Hit logic

if state_ == player.block
{
	var _direction = point_direction(other.x, other.y, x, y);
	set_movement(_direction, other.knockback_);
	audio_play_sound(a_stinger, 6, false);
	if other.destroy_on_contact_ instance_destroy(other);
	move_movement_entity(true);
	apply_friction_to_movement_entity();
}

else if hurtbox_entity_can_be_hit_by(other) {
	invincible_ = true;
	alarm[0] = global.one_second*0.75;
	global.player_health -= other.damage_;
	var _direction = point_direction(other.x, other.y, x, y);
	set_movement(_direction, other.knockback_);
	state_ = player.hit;
	audio_play_sound(a_hurt, 6, false);
	//event_user(state_);
	if other.destroy_on_contact_ instance_destroy(other);
}