///scr_check_keys() - gets keyboard status for keys
inputs[? INPUTS.UP_PRESSED] = keyboard_check_pressed(ord('W'));
inputs[? INPUTS.UP_ANY] = keyboard_check(ord('W'));
inputs[? INPUTS.DOWN_PRESSED] = keyboard_check_pressed(ord('S'));
inputs[? INPUTS.DOWN_ANY] = keyboard_check(ord('S'));
inputs[? INPUTS.LEFT_PRESSED] =  keyboard_check_pressed(ord('A'));
inputs[? INPUTS.LEFT_ANY] = keyboard_check(ord('A'));
inputs[? INPUTS.RIGHT_PRESSED] = keyboard_check_pressed(ord('D')); 
inputs[? INPUTS.RIGHT_ANY] = keyboard_check(ord('D'));
inputs[? INPUTS.ESC_ANY] = keyboard_check(vk_escape);
inputs[? INPUTS.RESTART_ANY] = keyboard_check(ord('R'));
inputs[? INPUTS.LMB_CLICKED] = mouse_check_button_pressed(mb_left);
inputs[? INPUTS.LMB_ANY] = mouse_check_button(mb_left);
