// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB) {
    if (window == 1 && window_timer == 7) {
        instance_create(x - 10 + spr_dir * 65, y - 50, "obj_article1");
    }
}

if (attack == AT_UAIR) {
    if (window == 2 && window_timer == 1) {
        instance_create(x - 10 + spr_dir * 10, y - 75, "obj_article1");
    }
}

if (attack == AT_USTRONG) {
    if (window == 3 && window_timer == 3) {
        instance_create(x - 10, y - 75, "obj_article1");
    }
}

if (attack == AT_NSPECIAL) {
    if window_timer < 8 {
        hsp *= 0.95
        vsp *= 0.9
    }
    if (accelerator == noone && window == 1 && window_timer == 8) {
        accelerator = instance_create(x - (spr_dir * 30), y-70, "obj_article2");
    }
}

if (attack == AT_DSPECIAL) {
    if window_timer < 8 {
        hsp *= 0.95
        vsp *= 0.9
    }
    if (mortar == noone && window == 1 && window_timer == 8) {
        mortar = instance_create(x - (spr_dir * 30), y-70, "obj_article3");
    }
}

if (attack == AT_DSPECIAL_2) {
    if window_timer < 14 {
        hsp *= 0.95
        vsp *= 0.9
    }
    if (mortar != noone && window == 1 && window_timer == 14) {
        instance_create(mortar.x + 25 + 65 * sign(sign(mortar.spr_dir) - 1), mortar.y + 7, "obj_article1");
    }
}

//uspecial momentum 
if (attack == AT_USPECIAL) {
    switch(window){
        case 1:
            if window_timer == 1 uspecial_speed = 20;
            hsp *= 0.6;
            vsp *= 0.6;
            //vsp = min(vsp * 0.6, -1)
            break;
        case 2:
            // lock in direction/direction faced on frame 1 of window 2
            
            if (window_timer == 1){
                uspecial_dir = joy_dir;
                
                

                reset_hitbox_value(AT_USPECIAL, 1, HG_ANGLE);
                reset_hitbox_value(AT_USPECIAL, 2, HG_ANGLE);
                reset_hitbox_value(AT_USPECIAL, 3, HG_ANGLE);
                reset_hitbox_value(AT_USPECIAL, 4, HG_ANGLE);
                
                
                // trigonometry shenanigans to determine the angle uspecial should send grounded targets at
                
                if (abs(sin(degtorad(uspecial_dir))) < 0.5){
                       ground_angle = (uspecial_dir + 180) * -1;
                       print_debug(ground_angle)
                       if (abs(sin(degtorad(ground_angle))) < 0.5){
                           ground_angle = 90 + (45 * sign(cos(degtorad(ground_angle))));
                           print_debug(ground_angle)
                       }
                    }
                else {
                    ground_angle = uspecial_dir;
                }
                
                if (spr_dir == 1) {
                    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 180+ground_angle);
                    set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, ground_angle);
                    
                    set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 180+uspecial_dir);
                    set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, uspecial_dir);
                }
                else {
                    set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, -ground_angle);
                    set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, -uspecial_dir);
                    set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, -ground_angle+180);
                    set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, -uspecial_dir+180);
                }
            }
            if window_timer == 2 {
                instance_create(x,y, "obj_article1");
            }
            hsp = cos(degtorad(uspecial_dir)) * 1;
            vsp = sin(degtorad(uspecial_dir)) * -1;
            break;
        case 3:
            if (window_timer <= 3) {
                hsp = cos(degtorad(uspecial_dir)) * uspecial_speed;
                vsp = sin(degtorad(uspecial_dir)) * -uspecial_speed;
                uspecial_speed -= 3;
            }
            break;
    }
    
}