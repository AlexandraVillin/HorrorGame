var cbox_side;

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

hspd = (key_right - key_left) * 4;
vspd = (key_down - key_up) * 4;

if(hspd > 0) cbox_side = bbox_right; else cbox_side = bbox_left;
if(tilemap_get_at_pixel(tilemap, cbox_side + hspd, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, cbox_side + hspd, bbox_bottom) != 0){

if (hspd > 0) x = x - (x%32) + 31 - (bbox_right - x);
else x = x - (x%32) - (bbox_left - x);
hspd = 0;
}

x += hspd;

if(vspd > 0) cbox_side = bbox_bottom; else cbox_side = bbox_top;
if(tilemap_get_at_pixel(tilemap, bbox_left, cbox_side + vspd) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, cbox_side + vspd) != 0){

if (vspd > 0) y = y - (y%60) + 59 - (bbox_bottom - y);
else y = y - (y%60) - (bbox_top - y);
vspd = 0;
} 

y += vspd;

