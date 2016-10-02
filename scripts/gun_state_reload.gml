// ensure active weapon
if(_owner._weapons[| _owner._activeWeapon] != self.id) {
    state_switch("inactive", false);
}

// weapon is active
sprite_index = _baseSprite;
if (state_new) {
    if (_sndReloadStart != noone)
        audio_play_sound(_sndReloadStart, 10, false)
}

_reloadTimer++;
if (_reloadTimer > _reloadSpeed / _magazineSize) {    
    _reloadTimer = 0;
    _bullets++;
    if (_sndReloadEvery != noone)
        audio_play_sound(_sndReloadEvery, 1, false)
}

if (_bullets = _magazineSize) {
    _timeToFire = 0;
    if (_sndReloadEnd != noone)
        audio_play_sound(_sndReloadEnd, 10, false);
    state_switch("idle", true);
}
