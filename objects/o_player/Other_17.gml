/// @description Block State

speed_ = 0;
image_index = 0;
image_speed = 0;

var _released = false;

if action_ == action.one
{
	_released = !o_input.action_one_;
}
else
{
	_released = !o_input.action_two_;
}

if !blocking_
{
	alarm[0] = -1;
	invincible_ = true;
	blocking_ = true;
}

//alarm[0] = global.one_second;

if _released or global.player_stamina <= 0
{
	//alarm[0] = 1;
	invincible_ = false;
	blocking_ = false;
	state_ = player.move;
}
