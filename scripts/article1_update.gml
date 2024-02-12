//article1_update
//nadir pebble update



if kb_box != noone && delete_hitbox {
        instance_destroy(kb_box);
        kb_box_owner = noone;
        kb_box = noone;
}
delete_hitbox = false;

travel_angle = radtodeg(arctan2(vsp, hsp)) % 360;

if kb_box != noone {
    kb_box.length++;
    kb_box.x = x+10;
    kb_box.y = y+10;
    if !hitstop {
        kb_box.hsp = hsp;
        kb_box.vsp = vsp;
    }
    if (hsp != 0 || vsp != 0) {
        kb_box.kb_angle = travel_angle;
    }
    else kb_box.kb_angle = 90;
}

if !hitstop {
    
  
    // this is not a perfect fix to pebbles sliding off ledges - ideally i'd want to preempt normal article movement
    // i have a few other things i should prioritize over cleaning this up
    
    //if went further than hsp should have allowed last frame:
    if (!free && !init && abs(prev_x - x) > abs(hsp)) {
        x = prev_x;
        
        if prev_y - y != 0 {
            bin_left = 0;
            bin_right = abs(prev_y - y);
            while bin_left <= bin_right {
                bin_mid = floor((bin_left + bin_right) / 2);
                if place_meeting(x, y + (bin_mid * sign(prev_y - y)), asset_get("par_block")) {
                    bin_left = bin_mid + 1;
                }
                else if !place_meeting(x, y + (bin_mid * sign(prev_y - y)) - sign(prev_y - y), asset_get("par_block")) {
                    bin_right = bin_mid - 1;  
                }
                else {
                    y = y + (bin_mid * sign(prev_y - y));
                    break;
                }
            }
        }
        
    }         
    
        
    
    keep_going = true;
    // if charge timer > 0 decrement charge timer
    if charge > 0 charge--;
    if disable_grav_accel disable_grav_accel--;
    if !disable_grav_accel last_accel = noone;
    if hit_recently hit_recently--;
    // else
    // if sprite is charged sprite set to uncharged sprite
    // if has hitbox set hitbox to uncharged
    else {
        sprite_index = sprite_get("pebble0");
        if (kb_box != noone) {
            kb_box.attack = AT_EXTRA_1;
        }
    }
    
    //if pebble contacted an accelerator:
    with (asset_get("obj_article2")) {
        if (is_accel && place_meeting(x + (60 * sign(sign(spr_dir) - 1)),y,other)){
            if (other.last_accel == noone) {
                if other.despawn_state == 2 instance_destroy();
                else {
                    other.keep_going = false;
                    other.last_accel = self;
                    other.disable_grav_accel = 15;
                    other.charge = 60;
                    other.x = x + 10 + (40 * sign(sign(spr_dir) - 1));
                    other.y = y + 10;
                    other.hsp = 40 * spr_dir;
                    other.vsp = 0;
                    other.retain_kb_box = 20;
                    other.hitstop = 12;
                    other.disable_grav_platform = false;
                    other.hit_recently = 20;
                    other.resting = false;
                    if other.kb_box == noone other.kb_box = create_hitbox(AT_EXTRA_1, 1, other.x, other.y);
                }
            }
        }
        else if (is_accel && self == other.last_accel && !place_meeting(x + (20 * spr_dir) + (60 * sign(sign(spr_dir) - 1)),y,other)) {
            other.last_accel = noone;
        }
    }
    //if pebble was just created and player is in mortar command animation
    if (keep_going && !mortar_launched) {
        mortar_launched = true;
        with (asset_get("oPlayer")) {
            if player = other.creator && attack == AT_DSPECIAL_2  && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
                print_debug("yeet");
                other.keep_going = false;
                other.hsp = 15 * mortar.spr_dir;
                other.vsp = -15;
                other.disable_grav_platform = false;
                other.disable_grav_accel = 0;
                other.hit_recently = 18;
                other.resting = false;
                if other.kb_box == noone other.kb_box = create_hitbox(AT_EXTRA_1, 1, other.x+10, other.y+10);
            }
        }
    }
    
    if keep_going {
        with (asset_get("oPlayer")) {
            
            if url == other.nadir_url && attack == AT_FSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && window == 2 && window_timer == 1 && collision_circle(x+(spr_dir * 40), y - 40, 120, other, true, true) != noone {       
                print_debug("yeet");
                other.keep_going = false;
                other.hsp = 15 * spr_dir;
                other.vsp = -0.5;
                other.disable_grav_platform = false;
                other.disable_grav_accel = 15;
                other.hit_recently = 18;
                other.resting = false;
                
                other.dir_sent = radtodeg(spr_dir);
                if other.kb_box == noone other.kb_box = create_hitbox(AT_EXTRA_1, 1, other.x+10, other.y+10);
            }
        }
    }
    
    if keep_going {
        with (asset_get("pHitBox")){
            if (self != other.kb_box) {
                    
               
                // this is incomplete - wanted to support pebbles bouncing off of one another, but wasn't able to get it working properly
                if place_meeting(x, y, other) && !(player_id.url == other.nadir_url && attack == AT_EXTRA_1){ // && !(hsp != 0 && vsp != 0) && (other.kb_box == noone || (abs(other.kb_box.kb_angle - kb_angle) % 360 < 75 || abs(other.kb_box.kb_angle - kb_angle) % 360 > 285))) {
                    var found = false;
                    for (var i = 0; i < ds_list_size(other.overlap_ls); i++) {
                        if self == ds_list_find_value(other.overlap_ls, i).kb_box found = true;
                    }
                    if !found {
                        other.keep_going = false;
                        other.hsp = lengthdir_x(kb_value*other.weight, get_hitbox_angle(id));
                		other.vsp = lengthdir_y(kb_value*other.weight, get_hitbox_angle(id));
                		other.hit_recently = kb_value * 2;
                	    other.hitstop = 3;
                	    other.retain_kb_box = kb_value * 2;
                	    other.disable_grav_platform = false;
                        other.disable_grav_accel = 0;
                        other.hit_by = self;
                        other.resting = false;
                        
                        if other.despawn_state == 2 other.despawn = true;
                        if other.kb_box == noone {
                           other.kb_box_owner = player_id;
                        }
                        else {
                            other.kb_box.player = player;
                    }
                    }
                }
            }
        }
    }
    
    if (!keep_going && kb_box == noone) {
        kb_box = create_hitbox(AT_EXTRA_1, 1, x+10, y+10);
        kb_box.player = kb_box_owner.player;
    }
    
    
    
    if (!init) {
        
        // check if pebble both has a hitbox and hit a player
        if kb_box != noone {
            with (asset_get("pHurtBox")) {
                if place_meeting(x, y, other) && other.kb_box.player != player {
                    if (abs(other.hsp) > abs(other.vsp)){
                        other.hsp *= -0.25;
                		other.vsp *= -0.25;
                    }
                    else {
                        other.hsp *= 0.25;
                		other.vsp *= -0.25;
                    }
            		other.hit_recently = 0;
            	    other.hitstop = ceil(other.kb_box.kb_value * 0.25);
            	    other.disable_grav_platform = false;
                    other.disable_grav_accel = 0;
                    other.hit_by = noone;
                    other.resting = false;
                    
                    other.delete_hitbox = true;
                    
                    
                    if other.despawn_state == 2 other.despawn = true;
                    
                    
                }
            }
        }
            
            if (!free) {
                if despawn_state == 2 despawn = true;
                
                if hit_recently {
                    
                    vsp = -abs(vsp);
                    //vsp = clamp(vsp, -20, -6);
                }
                else {
                    delete_hitbox = true;
                    if abs(prev_vsp) < 8 && abs(prev_hsp) < 5 {
                        resting = true;
                        vsp = 0;
                        hsp = 0;
                        prev_hsp = 0; // setting this is basically a flag to skip the hsp if statement, there was a weird case as a result of setting hsp based on prev hsp
                        //disable_grav_platform = true;
                    }
                    else  {
                        vsp = -sign(prev_vsp) * clamp(prev_vsp * 0.55, 3, 6);
                        hsp = sign(prev_hsp) * min(abs(prev_hsp * 0.4), 3);
                    }
                }
            }
            if (prev_hsp != 0 && hsp == 0) {
                
                if despawn_state == 2 despawn = true;
                
                if !hitstop {
                    if hit_recently {
                        hsp = -0.5 * prev_hsp;
                    }
                    else {
                        
                    delete_hitbox = true;
                
                
                disable_grav_accel = 0;
                hsp = -0.5 * sign(prev_hsp);
                vsp *= 0.5
                    }
                }
                
                
            }
    }

    
    
    
    
    if (!disable_grav_accel && !(resting)){
        vsp += grav;
    }
    init = false;
    temp_prev_vsp = prev_vsp;
    prev_vsp = vsp;
    prev_hsp = hsp;
    prev_free = free;
    prev_x = x;
    prev_y = y;
    
    
   if (!free && vsp > 0) vsp = 0;
 
    
    
}

       

    // i'm pretty sure this is an abhorrent way of doing this but i'm tight on time and very tired
   /* ds_list_clear(overlap_ls);
    with (asset_get("obj_article1")) {
        if (other != self && place_meeting(x,y, other) && player_id.url == nadir_url) {
            ds_list_add(other.overlap_ls, self);
        }
    }*/
    
    if timer < 360 timer++;
    else despawn_state = 2;
    
    

    if (get_stage_data(SD_LEFT_BLASTZONE_X) > x || get_stage_data(SD_RIGHT_BLASTZONE_X) < x || get_stage_data(SD_BOTTOM_BLASTZONE_Y) < y) despawn = true;
    if despawn instance_destroy();





