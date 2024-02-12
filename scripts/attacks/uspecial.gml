set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 4);


set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START,0);




set_num_hitboxes(AT_USPECIAL, 4);

//hit 1, ground targets (pebble should run checks on its end)

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 3);

//hit 1, air targets

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 3);

// hit 2, ground targets

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 3);

// hit 2, airborne targets

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 3);