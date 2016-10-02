/// gun_state_inactive
// ensure active weapon
sprite_index = noone;
if(_owner._weapons[| _owner._activeWeapon] == self.id) {
    state_switch(ds_stack_pop(state_stack));
}
