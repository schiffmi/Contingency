/// scr_getHit(whatHitMe::instance)
var hitBy = argument0;
if (object_index == obj_player) {
    hp -= hitBy.damage;
    image_alpha = hp / 100;

}
