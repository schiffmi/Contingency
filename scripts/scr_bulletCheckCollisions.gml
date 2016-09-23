///scr_bulletCheckCollisions

var instanceHit = instance_place(x + hspeed, y + vspeed, obj_testEnemy);
if (instanceHit) {
    instanceHit._hitByBullet = true;
    instance_destroy();
}
