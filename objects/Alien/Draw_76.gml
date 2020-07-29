//Die
if(_health <= 0) instance_destroy()

//Gravity
y += velocity
velocity += acceleration

//Tile collision
var NO_TILE = 0
var OUTSIDE_ROOM = -1

tilemap = layer_tilemap_get_id("Tiles")

var tile_on_left_foot = tilemap_get_at_pixel(tilemap, x, y + sprite_height)
if(tile_on_left_foot != NO_TILE && tile_on_left_foot != OUTSIDE_ROOM && yprevious <= y)// If colliding with a tile while falling
{
	var tile_above_prev_y = tilemap_get_at_pixel(tilemap, x, yprevious_from_fall_left + sprite_height)
	if(tile_above_prev_y == NO_TILE){// If the y position of the last frame is not colliding with a tile.
		velocity = 0
		STATE = "grounded"
	}else{
		if(yprevious < y) yprevious_from_fall_left = yprevious
	}
}else{
    if(yprevious < y) yprevious_from_fall_left = yprevious
}

var tile_on_right_foot = tilemap_get_at_pixel(tilemap, x + sprite_width, y + sprite_height)
if(tile_on_right_foot != NO_TILE && tile_on_right_foot != OUTSIDE_ROOM && yprevious <= y)// If colliding with a tile while falling
{
	var tile_above_prev_y = tilemap_get_at_pixel(tilemap, x + sprite_width, yprevious_from_fall_right + sprite_height)
	if(tile_above_prev_y == NO_TILE){// If the y position of the last frame is not colliding with a tile.
		velocity = 0
		STATE = "grounded"
	}else{
		if(yprevious < y) yprevious_from_fall_right = yprevious
	}
}else{
    if(yprevious < y) yprevious_from_fall_right = yprevious
}

//Move on platforms
if(STATE == "grounded"){
	x += (1 * movement_direction)
}

if(tile_on_left_foot == NO_TILE){
	movement_direction = 1
}

if(tile_on_right_foot == NO_TILE){
	movement_direction = -1
}

