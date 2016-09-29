///inputdog_true_analog(joystick, player)

var left = argument0;
var PLAYER = argument1;
var INPUT_MANAGER = inputdog_find_inputmanager_child_by_player(PLAYER);
var h_point = 0;
var v_point = 0;
var hor = gp_axislh;
var ver = gp_axislv;
if (!left) {
    hor = gp_axisrh;
    ver = gp_axisrv;
}

h_point = gamepad_axis_value(INPUT_MANAGER.gamepadSlot, hor);
v_point = gamepad_axis_value(INPUT_MANAGER.gamepadSlot, ver);
var dist = point_distance(0, 0, h_point, v_point);

if (abs(dist) > INPUT_MANAGER.analogDeadzone) {
    return dist;
}
else return 0;
