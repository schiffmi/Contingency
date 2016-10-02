#define scr_projectileCheckMultipleCollisions
///scr_projectileCheckMultipleCollisions(objectsToCheck :: ds_list)
var collisionsToCheck = argument0;
var nearestCollision = noone;
for (var i = 0; i < ds_list_size(collisionsToCheck); i++) {
    var collision = scr_projectileNearestCollisionRectangle(collisionsToCheck[| i]);
    if (collision) {
        if (!nearestCollision || distance_to_object(collision) < distance_to_object(nearestCollision)) {
            nearestCollision = collision;
        }
    }
}

return nearestCollision;
#define scr_projectileNearestCollisionRectangle
///scr_projectileNearestCollisionRectangle(collideable object)
///scr_bulletCheckCollisions
var collisions = ds_list_create();
var left, top, right, bottom;
left = bbox_right;
top = bbox_top;
right = bbox_right + _hspd;
bottom = bbox_bottom + _vspd;
var collideable = argument0;
var curr_collision = collision_rectangle(left, top, right, bottom, collideable, false, false);
var collision_item_locations = ds_map_create();
var nearest = noone;
while (curr_collision != noone) {
    collision_item_locations[? curr_collision] = curr_collision.x;
    curr_collision.x = -1000;
    ds_list_add(collisions, curr_collision);    
    curr_collision = collision_rectangle(left, top, right, bottom, collideable, false, false);
}

for (var i = 0; i < ds_list_size(collisions);  i++) {
    collisions[| i].x = collision_item_locations[? collisions[| i]];
    if (nearest == noone || distance_to_object(collisions[| i]) < distance_to_object(nearest)) {
        nearest = collisions[| i];    
    }    
}
ds_map_destroy(collision_item_locations);
ds_list_destroy(collisions);

return nearest;
