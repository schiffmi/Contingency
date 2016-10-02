// ensure active weapon
sprite_index = _baseSprite;
if(_owner._weapons[| _owner._activeWeapon] != self.id) {
    state_switch("inactive", false);
}

audio_play_sound(_sndShoot, 10, false);
var weaponSize = sprite_width / 2 + 1;
var bulletSpawnDist = point_distance(x, y, x + weaponSize, y + weaponSize);
var bulletX = lengthdir_x(bulletSpawnDist, image_angle);
var bulletY = lengthdir_y(bulletSpawnDist, image_angle);
var bulletAngle = random_range(image_angle - _sprayAngle, image_angle + _sprayAngle);
scr_createBullet(x + bulletX, y+ bulletY, obj_bullet, bulletAngle, _bulletSpeed, _bulletDamage);
_timeToFire = _rofTimer;
_bullets--;

if (_bullets <= 0 && ! _forceManualReload) {
    state_switch("reload", true);
}
else {
    state_switch("idle", true);
}
