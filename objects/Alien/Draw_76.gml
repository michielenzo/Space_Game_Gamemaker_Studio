//Die
if(_health <= 0) instance_destroy()

//Gravity
y += velocity
velocity += acceleration

//Tile collision
var NO_TILE = 0
var OUTSIDE_ROOM = -1

var left_foot_x = movement_direction == 1 ? x : x + sprite_width //prite_width becomes negative when image_xscale is negative
var right_foot_x = movement_direction == 1 ? x + sprite_width : x

tilemap = layer_tilemap_get_id("Tiles")

var tile_on_left_foot = tilemap_get_at_pixel(tilemap, left_foot_x, y + sprite_height)
if(tile_on_left_foot != NO_TILE && tile_on_left_foot != OUTSIDE_ROOM && yprevious <= y)// If colliding with a tile while falling
{
	var tile_above_prev_y = tilemap_get_at_pixel(tilemap, left_foot_x, yprevious_from_fall_left + sprite_height)
	if(tile_above_prev_y == NO_TILE){// If the y position of the last frame is not colliding with a tile.
		velocity = 0
		STATE = "grounded"
		LEFT_FOOT_STATE = "grounded"
	}else{
		if(yprevious < y){
			yprevious_from_fall_left = yprevious
			LEFT_FOOT_STATE = "falling"
		} 
	}
}else{
	if(yprevious < y){
		yprevious_from_fall_left = yprevious
		LEFT_FOOT_STATE = "falling"
	} 
}

var tile_on_right_foot = tilemap_get_at_pixel(tilemap, right_foot_x, y + sprite_height)
if(tile_on_right_foot != NO_TILE && tile_on_right_foot != OUTSIDE_ROOM && yprevious <= y)// If colliding with a tile while falling
{
	var tile_above_prev_y = tilemap_get_at_pixel(tilemap, right_foot_x, yprevious_from_fall_right + sprite_height)
	if(tile_above_prev_y == NO_TILE){// If the y position of the last frame is not colliding with a tile.
		velocity = 0
		STATE = "grounded"
		RIGHT_FOOT_STATE = "grounded"
	}else{
		if(yprevious < y){
			yprevious_from_fall_right = yprevious
			RIGHT_FOOT_STATE = "falling"
		} 
	}
}else{
	if(yprevious < y){
		yprevious_from_fall_right = yprevious
		RIGHT_FOOT_STATE = "falling"
	} 
}

if(LEFT_FOOT_STATE == "grounded" || RIGHT_FOOT_STATE == "grounded") STATE = "grounded"

//Move on platforms
if(STATE == "grounded"){
	x += (1 * movement_direction)
}

var sprite_width_positive = sprite_width < 0 ? -sprite_width : sprite_width



if(tile_on_left_foot == NO_TILE && STATE == "grounded"){
	if(movement_direction != 1) x -= sprite_width_positive
	movement_direction = 1
	image_xscale = 1
	
}

if(tile_on_right_foot == NO_TILE && STATE == "grounded"){
	if(movement_direction != -1) x += sprite_width_positive
	movement_direction = -1
	image_xscale = -1
}


show_debug_message(string(sprite_width_positive))