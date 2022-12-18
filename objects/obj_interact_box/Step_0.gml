/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player_main) && keyboard_check(ord("E")) && global.reading == false)
{
	global.reading = true;
	myTextbox = instance_create_layer(x,y, "Textbox", obj_textbox)
	myTextbox.text = text;
}
if(global.reading == false)
{
	instance_destroy(myTextbox)
	myTextbox = noone;
}
