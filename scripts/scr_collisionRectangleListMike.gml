///scr_collisionRectangleListMike
var startTime = current_time;
var obj = argument0;
var collisions = ds_list_create();
var curr_collision = collision_rectangle(x, y, x + hspd, y + vspd, obj, false, false);
var collision_item_locations = ds_map_create();
//var nearest = noone;
while (curr_collision != noone) {
    collision_item_locations[? curr_collision] = curr_collision.x;
    curr_collision.x = -1000;
    ds_list_add(collisions, curr_collision);    
    curr_collision = collision_rectangle(x, y, x + hspd, y + vspd, obj, false, false);
}


for (var i = 0; i < ds_list_size(collisions);  i++) {
    collisions[| i].x = collision_item_locations[? collisions[| i]];
//    if (nearest == noone || distance_to_object(collisions[| i]) < distance_to_object(nearest)) {
//        nearest = collisions[| i];    
//    }    
}
ds_map_destroy(collision_item_locations);
//ds_list_destroy(collisions);

var endTime = current_time;
show_debug_message("Total time: " + string(endTime - startTime));
return collisions;

//if (nearest) {
//    destroy = true;
//}
