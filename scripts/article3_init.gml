//article3_init
//article for mortar


can_be_grounded = false;
ignores_walls = false;
uses_shader = true;

spr_dir = player_id.spr_dir;




sprite_index = sprite_get("mortar0");
mask_index = sprite_get("mortarmask");



// despawn management
// ----------

lifespan = 420;
activate = 10;
deactivate = 370;
timer = 0;

is_active = false;