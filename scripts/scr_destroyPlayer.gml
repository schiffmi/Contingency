/// scr_destroyPlayer
for (var i = 0; i < _weaponsCount; i++) {
    with (_weapons[| i]) {
        instance_destroy();
    }
}
ds_list_destroy(_weapons);
instance_destroy();
