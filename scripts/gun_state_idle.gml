// ensure active weapon
if(_owner._weapons[| _owner._activeWeapon] != self.id) {
    state_switch("inactive", false);
}

// current weapon active
sprite_index = _baseSprite;
if (_timeToFire > 0) _timeToFire -= 1;

if (_reload && _bullets < _magazineSize) {
    state_switch("reload", true);
}
if (_down && _timeToFire <= 0 && _bullets > 0) {
    state_switch("shoot", true);
}
