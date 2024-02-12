set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));


set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 2);


set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);


set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);


set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);




set_num_hitboxes(AT_NSPECIAL, 0);