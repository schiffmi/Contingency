///scrBulletCollideWithWall
/* Collision With Wall */
if (place_meeting(round(x + hspeed), round(y), obj_wall)) {
    while (!place_meeting(round(x + sign(hspeed)), round(y), obj_wall)) x += sign(hspeed);
    speed = 0;
}
if (place_meeting(round(x), round(y + vspeed), obj_wall)) {
    while (!place_meeting(round(x), round(y + sign(vspeed)), obj_wall)) y += sign(vspeed);
    speed = 0;
}

