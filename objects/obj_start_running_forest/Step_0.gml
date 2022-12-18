/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_player_main))
{
	obj_player_main.walkSpeed = 5;
	instance_create_layer(obj_player_main.x-350,y-100,"Monster",obj_monster_forest)
	instance_destroy()
}



