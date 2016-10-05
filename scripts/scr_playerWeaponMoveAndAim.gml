/* Weapon Direction */
var rd = inputdog_analog("rightDir", _playerSlot);
var rstrength = inputdog_analog("rightIntensity", _playerSlot);
if (rstrength != 0) {
   var dif = angle_difference(rd, _weaponDirection);
   _weaponDirection += median(-10, dif, 10);
   //_weaponDirection += rd;
}
for (var i = 0; i < _weaponsCount; i++) {
    _weapons[| i].x = x;
    _weapons[| i].y = y;
    _weapons[| i].image_angle = _weaponDirection;
}
