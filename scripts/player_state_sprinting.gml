if (_stamina > 0 && inputdog_down("sprint", _playerSlot)) {
    _stamina -= floor(_maxStamina / _sprintTime);
    show_debug_message("Yolo");
    var s = inputdog_analog("leftIntensity", _playerSlot);
    var d = inputdog_analog("leftDir", _playerSlot);
    if (s == 0) {
        _hspd = 0; _vspd = 0; 
    } else {   
       direction = d; 
       s *= (_speedVector * _sprintMultiplier);
       _hspd = lengthdir_x(s, d);
       _vspd = lengthdir_y(s, d); 
    }
} else {
    state_switch("standard");
}

