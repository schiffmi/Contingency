///scr_playerPickupWeapon(weapon)
var weapon = argument0;

if (_weaponsCount < _maxWeapons) {
    ds_list_add(_weapons, weapon);
    weapon._owner = self.id;
    _weaponsCount++;
} else {
    ds_list_replace(_weapons, _activeWeapon, weapon);
}
weapon.x = x;
weapon.y = y;

