//Die if health is depleted.
if(current_health <= 0) instance_destroy()

//Gravity
y += velocity
velocity += acceleration

//Tile collision
var NO_TILE = 0
var OUTSIDE_ROOM = -1

var tilemap = layer_tilemap_get_id("Tiles")

var left_foot_x = movement_direction == 1 ? x : x + sprite_width //sprite_width becomes negative when image_xscale is negative
var right_foot_x = movement_direction == 1 ? x + sprite_width : x

var tile_on_left_foot = tilemap_get_at_pixel(tilemap, left_foot_x, y + sprite_height)
var tile_on_right_foot = tilemap_get_at_pixel(tilemap, right_foot_x, y + sprite_height)

if(floor_tile_collision_at_pixel(left_foot_x, y, yprevious, sprite_height, yprevious_from_fall_left, tile_on_left_foot)){
	velocity = 0
	STATE = "grounded"
	LEFT_FOOT_STATE = "grounded"
} else {
	if(yprevious < y){
		yprevious_from_fall_left = yprevious
		LEFT_FOOT_STATE = "falling"
	} 
}

if(floor_tile_collision_at_pixel(right_foot_x, y, yprevious, sprite_height, yprevious_from_fall_right, tile_on_right_foot)){
	velocity = 0
	STATE = "grounded"
	RIGHT_FOOT_STATE = "grounded"
} else {
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

//Turn around when the end of the platform is reached
var sprite_width_positive = return_positive(sprite_width) //sprite_width becomes negative when image_xscale is negative. Therefore this is necessary.

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

//Aggro
is_aggroed = distance_to_object(player_instance) <= aggro_range ? true : false

if(is_aggroed && can_shoot){
	var x_spawn_pos = movement_direction == -1 ? x - 25 - sprite_width_positive : x + sprite_width_positive
	var y_spawn_pos = y + sprite_height / 2
	var _direction = movement_direction == -1 ? 180 : 0
	shoot_laser_beam(x_spawn_pos, y_spawn_pos, _direction)
	
	alarm_set(0, 120)
	can_shoot = false
}
	


