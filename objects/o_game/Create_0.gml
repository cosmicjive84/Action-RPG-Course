global.one_second = game_get_speed(gamespeed_fps);
global.destroyed = [];
instance_create_layer(0, 0, "Instances", o_input);

var _font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, _font_string, true, 1);
draw_set_font(global.font);

global.player_max_health = 4;
global.player_health = global.player_max_health;
global.player_max_stamina = 3;
global.player_stamina = global.player_max_stamina;
global.player_gems = 0;

global.player_start_position = i_game_start;
global.start_x = noone;
global.start_y = noone;
global.load = false;

//audio_play_sound(a_music, 10, true);
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

paused_ = false;
paused_sprite_ = noone;
paused_sprite_scale_ = display_get_gui_width()/view_wport[0];

global.item[0] = noone;
global.item[1] = noone;
item_index_ = 0;

inventory_create(6);
//inventory_add_item(o_sword_item);
//inventory_add_item(o_bomb_item);
inventory_add_item(o_ring_item);
inventory_add_item(o_bow_item);