//Gravity
y += velocity
velocity += acceleration

//Tile collision
tilemap = layer_tilemap_get_id("Tiles")

var left_foot_x = face_direction == "right" ? x : x + sprite_width
var right_foot_x = face_direction == "right" ? x + sprite_width : x

if(floor_tile_collision_at_pixel(id, left_foot_x, y, yprevious_from_fall_left)){
	velocity = 0
	STATE = "idle"
} else {
	if(yprevious < y) yprevious_from_fall_left = yprevious 
}

if(floor_tile_collision_at_pixel(id, right_foot_x, y, yprevious_from_fall_right)){
	velocity = 0
	STATE = "idle"
} else {
	if(yprevious < y) yprevious_from_fall_right = yprevious 
}

//Turn around
image_xscale =  face_direction == "right" ?  1 : -1
if(face_direction != prev_face_direction){
	x = face_direction == "left" ? x + return_positive(sprite_width) : x - return_positive(sprite_width)
} 
prev_face_direction = face_direction

