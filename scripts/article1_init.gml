//article1_init
//article for pebbles


can_be_grounded = true;
ignores_walls = false;
uses_shader = true;
init = true;

grav = 0.75;

weight = 2.6;

delete_hitbox = false;

//spr_dir = player_id.spr_dir;
nadir_url = player_id.url;
travel_angle = 0;

overlap_ls = ds_list_create();

sprite_index = sprite_get("pebble0");
mask_index = sprite_get("pebblemask");

angle_sent = -1;

kb_box_owner = noone;

disable_grav_platform = false;

// DESPAWN MANAGEMENT
// ----------

resting = false;
// the amount of time, in frames, until queue_despawn is set to true
lifespan = 300;
timer = 0;

// var for pebble despawn management
// 0 = should not despawn
// 1 = should despawn on contact with ground/target but not if hit
// 2 = should despawn on contact with ground/target and if hit
despawn_state = 0;
despawn = false;

// ----------

//set "current" owner to the player who spawned it
//i might wind up needing to use this for a few things but i don't know yet (clueless)
owner = player_id.player;

creator = player_id.player;


hit_recently = 0;

// need to make sure pebbles don't get hit by the same hitbox/set of hitboxes multiple times
hit_by = noone;
// idk the exact vars and internet's still out, but i can kinda plan it out
// i need to store:
// which player hit it
// what attack they used
// which hitbox group the attacking hitbox belongs to
// and probably

dir_sent = radtodeg(player_id.spr_dir);

prev_free = false;

prev_x = 0;
prev_y = 0;
bin_left = 0;
bin_right = 0;
bin_mid = 0;

// bool for whether pebble is charged
charge = 0;

// var to store hitbox used when knocked around by attacks
kb_box = noone;

// flag to signal mortar-created pebbles to launch themselves frame 1
mortar_launched = false;

keep_going = true;

creator_ref = player_id;

last_accel = noone;


disable_grav_accel = 0;

retain_kb_box = 0;

prev_hsp = 0;
prev_vsp = 1;
temp_prev_vsp = 420; //used to prevent falling through plats