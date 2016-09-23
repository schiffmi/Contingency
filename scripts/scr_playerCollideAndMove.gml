/// scr_playerCollideAndMove() - check collision with wall and move
/* Collision */
if (place_meeting(round(x + _hSpd), round(y), obj_wall)) {
    while (!place_meeting(round(x + sign(_hSpd)), round(y), obj_wall)) x += sign(_hSpd);
    _hSpd = 0;
}
x += _hSpd;
if (place_meeting(round(x), round(y + _vSpd), obj_wall)) {
    while (!place_meeting(round(x), round(y + sign(_vSpd)), obj_wall)) y += sign(_vSpd);
    _vSpd = 0;
}
y += _vSpd;
