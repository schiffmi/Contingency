/// scr_playerCollideAndMove() - check collision with wall and move
/* Collision */
if (place_meeting(round(x + _hspd), round(y), obj_wall)) {
    while (!place_meeting(round(x + sign(_hspd)), round(y), obj_wall)) x += sign(_hspd);
    _hspd = 0;
}
x += _hspd;
if (place_meeting(round(x), round(y + _vspd), obj_wall)) {
    while (!place_meeting(round(x), round(y + sign(_vspd)), obj_wall)) y += sign(_vspd);
    _vspd = 0;
}
y += _vspd;


