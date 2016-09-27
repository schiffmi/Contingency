/// scr_collisionRectangleList(x1, y1, x2, y2, obj, prec, notme)
//
// Return a ds-List populated with instances that collide with given rectangle, r noone
{
  var startTime = current_time;
  var x1, y1, x2, y2, obj, prec, notme, dsid, i;
  x1 = argument0;
  y1 = argument1;
  x2 = argument2;
  y2 = argument3;
  obj = argument4;
  prec = argument5;
  notme = argument6;

  dsid = ds_list_create();

  with(obj) {
    if (!notme || id != other.id) {
      i = collision_rectangle(x1, y1, x2, y2, id, prec, false);
      if (i != noone) ds_list_add(dsid, i);
    }
  }

  if (ds_list_empty(dsid)) {
    ds_list_destroy(dsid);
    dsid = noone;
  }

  var endTime = current_time;
    if (endTime - startTime > 0)
  show_debug_message("Total time: " + string(endTime - startTime));
  return dsid;
}
