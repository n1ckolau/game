function scr_inputs(){
var _key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
var _key_jump = keyboard_check_pressed(vk_space);
}