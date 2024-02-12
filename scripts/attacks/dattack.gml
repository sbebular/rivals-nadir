set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);

//startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, dash_speed * 0.75);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 2);

//first hitbox
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, dash_speed * 1.75)
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);

//gap between hitboxes
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, dash_speed * 0.75);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 1);

//second hitbox
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, dash_speed * 1.5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 2);

//endlag
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 0);/*
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 2);*/
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 120);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));