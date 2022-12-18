/// @description Player movement, more

// Check keys for movement
moveRight = keyboard_check(ord("D"));
moveUp = keyboard_check(ord("W"));
moveLeft = keyboard_check(ord("A"));
moveDown = keyboard_check(ord("S"));

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

// Disable movement while reading a textbox
if(global.reading == true)
{
	vx = 0
	vy = 0
}

if(global.reading == true && mouse_check_button_pressed(mb_left))  ///TODO: Figure out a way for this to also be E
{
	global.reading = false
}

// If Idle
if (vx == 0 && vy == 0) {
	sprite_index = blue_character_idle;
	// Change idle Sprite based on last direction
//	switch dir {
//		case 0: sprite_index = spr_player_idle_right; break;
//		case 1: sprite_index = spr_player_idle_up; break;
//		case 2: sprite_index = spr_player_idle_left; break;
	//	case 3: sprite_index = spr_player_idle_down; break;
//		}	
	}

// If moving
if (vx != 0 || vy != 0) {
	if !collision_point(x+vx,y,obj_par_enviroment,true,true) {
		x += vx;
		}
	if !collision_point(x,y+vy,obj_par_enviroment,true,true) {
		y += vy;
		}

	
	//Change walking Sprite based on direction
	if ((vx > 0 || vy> 0) || (vx<0 || vy<0)) {
		sprite_index = blue_chatacter_walk_right;
		dir = 0;
		}
if (vx < 0) {
		sprite_index = blue_character_walk_left;
		dir = 2;
	}	
	//if (vy > 0) {
		//sprite_index = spr_player_walk_down;
	//	dir = 3;
	//	}
	//if (vy < 0) {
	//	sprite_index = spr_player_walk_up;
	//	dir = 1;
	//	}	
	}
