/// @description Evade State
image_speed = 0.7;

if animation_hit_frame(0) audio_play_sound(a_evade, 5, false);

set_movement(roll_direction_, roll_speed_);
move_movement_entity(false);

if animation_hit_frame(image_number-1) {
	state_ = player.move;
}