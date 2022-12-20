/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_player_main) && global.reading == false && read == false)
{
	global.reading = true;
	myTextbox = instance_create_layer(x,y, "Textbox", obj_textbox)
	myTextbox.text = text;
	read = true;
}
if(global.reading == false && read = true)
{
	instance_destroy(myTextbox)
	myTextbox = noone;
	instance_destroy()
	
}




