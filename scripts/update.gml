//update

// accelerator despawn
if (accelerator != noone) {
    move_cooldown[AT_NSPECIAL] = 2;
    if (accelerator.timer >= accelerator.lifespan) {
        instance_destroy(accelerator);
        accelerator = noone;
    }
}

if (mortar != noone) {
    if !mortar.is_active move_cooldown[AT_DSPECIAL] = 2;
    if (mortar.timer >= mortar.lifespan) {
        instance_destroy(mortar);
        mortar = noone;
    }
}
