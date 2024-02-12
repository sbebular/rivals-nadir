//article2_init
//article for accelerator


can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

spr_dir = player_id.spr_dir;




sprite_index = sprite_get("accelerator0");

mask_index = sprite_get("acceleratormask");




// despawn management
// ----------

lifespan = 420;
activate = 10;
deactivate = 370;
timer = 0;

// whether accelerator is currently active
// becomes active 10 frames after spawn, and becomes inactive 40 frames before deletion
is_active = false;

is_accel = true;