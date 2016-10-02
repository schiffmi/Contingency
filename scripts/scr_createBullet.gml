/// scr_createProjectile(x::xlocation, y::ylocation, type, direction, speed::int, damage::int)
var xIn = argument0;
var yIn = argument1;
var type = argument2;
var directionIn = argument3;
var speedIn = argument4;
var damage = argument5;

var projectile = instance_create(xIn, yIn, type);
projectile.direction = directionIn;
projectile._speed = speedIn;
projectile._damage = damage;
