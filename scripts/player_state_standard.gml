var s = inputdog_analog("leftIntensity", _playerSlot);
var d = inputdog_analog("leftDir", _playerSlot);
if (s == 0) {
    _hspd = 0; _vspd = 0; 
} else {   
   direction = d; 
   s *= _speedVector;
   _hspd = lengthdir_x(s, d);
   _vspd = lengthdir_y(s, d); 
}

/* Weapon Switch */
if (inputdog_pressed("switch", _playerSlot)) {
    _activeWeapon = (_activeWeapon + 1) % _weaponsCount;
}

/* Shoot */
scr_playerWeaponControls();

/* Check Sprinting */
if (_stamina < _maxStamina) {
    _stamina += (_maxStamina / _sprintTime / 2);
    _stamina = clamp(_stamina, 0, _maxStamina);
}
if (inputdog_down("sprint", _playerSlot) && _stamina >= _minSprintStamina) {
    state_switch("sprinting");
}
