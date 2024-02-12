set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);

set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("extra1"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("extra1_hurt"));

set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 1);


set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));