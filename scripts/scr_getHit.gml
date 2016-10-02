/// scr_getHit(whatHitMe::instance)
var hitBy = argument0;
if (object_index == obj_player) {
    _hp -= hitBy._damage;
    image_alpha = _hp / 100;
}
