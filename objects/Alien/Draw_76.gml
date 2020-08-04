//Die if health is depleted.
if(current_health <= 0){
	instance_destroy()
	return
}

//Gravity
apply_gravity(id)

//Tile collision
var NO_TILE = 0

var tilemap = layer_tilemap_get_id("Tiles")

var left_foot_x = movement_direction == 1 ? x : x + sprite_width //sprite_width becomes negative when image_xscale is negative
var right_foot_x = movement_direction == 1 ? x + sprite_width : x

var tile_on_left_foot = tilemap_get_at_pixel(tilemap, left_foot_x, y + sprite_height)
var tile_on_right_foot = tilemap_get_at_pixel(tilemap, right_foot_x, y + sprite_height)

if(floor_tile_collision_at_pixel(id, left_foot_x, y, yprevious_from_fall_left)){
	velocity = 0
	STATE = "grounded"
	LEFT_FOOT_STATE = "grounded"
} else {
	if(yprevious < y){
		yprevious_from_fall_left = yprevious
		LEFT_FOOT_STATE = "falling"
	} 
}

if(floor_tile_collision_at_pixel(id, right_foot_x, y, yprevious_from_fall_right)){
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
if(STATE == "grounded" && !is_aggroed){
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

if(is_aggroed){
	var player_left_of_me = player_instance.x <= x
	var facing_player = movement_direction == -1 && player_left_of_me || movement_direction == 1 && !player_left_of_me
	if(!facing_player && prev_facing_player != facing_player) {
		image_xscale = -image_xscale
		movement_direction = -movement_direction
		x = movement_direction == 1 ? x - sprite_width_positive : x + sprite_width_positive
	}
	prev_facing_player = facing_player
}
	
if(is_aggroed && can_shoot){
	var x_spawn_pos = movement_direction == -1 ? x - 25 - sprite_width_positive : x + sprite_width_positive
	var y_spawn_pos = y + sprite_height / 2
	var _direction = movement_direction == -1 ? 180 : 0
	shoot_laser_beam(x_spawn_pos, y_spawn_pos, _direction)
	
	alarm_set(0, 120)
	can_shoot = false
}


