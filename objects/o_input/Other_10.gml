/// @description Get input

right_ = keyboard_check(vk_right);
left_ = keyboard_check(vk_left);
up_ = keyboard_check(vk_up);
down_ = keyboard_check(vk_down);

left_pressed_ = keyboard_check_pressed(vk_left);
right_pressed_ = keyboard_check_pressed(vk_right);
up_pressed_ = keyboard_check_pressed(vk_up);
down_pressed_ = keyboard_check_pressed(vk_down);

action_one_pressed_ = keyboard_check_pressed(ord("X"));
action_two_pressed_ = keyboard_check_pressed(ord("Z"));

action_one_ = keyboard_check(ord("X"));
action_two_ = keyboard_check(ord("Z"));

pause_pressed_ = keyboard_check_pressed(vk_enter);