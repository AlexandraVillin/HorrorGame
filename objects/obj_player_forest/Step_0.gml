/// @description Player movement, more

// Check keys for movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);

// If Idle
if (vx == 0) {
	sprite_index = blue_character_idle;
	// Change idle Sprite based on last direction
//	switch dir {
//		case 0: sprite_index = spr_player_idle_right; break;
//		case 0: sprite_index = spr_player_idle_right; break;
//		case 1: sprite_index = spr_player_idle_up; break;
//		case 2: sprite_index = spr_player_idle_left; break;
	//	case 3: sprite_index = spr_player_idle_down; break;
//		}	
	}

// If moving
if (vx != 0) {
	if !collision_point(x+vx,y,obj_par_enviroment,true,true) {
		x += vx;
		}

	
	//Change walking Sprite based on direction
	if (vx > 0 || vx<0 ) {
		sprite_index = blue_chatacter_walk_right;
		dir = 0;
		}
//	if (vx < 0) {
		//sprite_index = spr_player_walk_left;
	//	dir = 2;
	//	}	
	//if (vy > 0) {
		//sprite_index = spr_player_walk_down;
	//	dir = 3;
	//	}
	//if (vy < 0) {
	//	sprite_index = spr_player_walk_up;
	//	dir = 1;
	//	}	
	}
